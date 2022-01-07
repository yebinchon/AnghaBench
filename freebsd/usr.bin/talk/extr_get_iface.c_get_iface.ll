; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_get_iface.c_get_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_get_iface.c_get_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.in_addr, i8*, i8* }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i32 }

@get_iface.local = internal global %struct.sockaddr_in zeroinitializer, align 8
@AF_INET = common dso_local global i8* null, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_iface(%struct.in_addr* %0, %struct.in_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in_addr*, align 8
  %5 = alloca %struct.in_addr*, align 8
  %6 = alloca %struct.sockaddr_in, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.in_addr* %0, %struct.in_addr** %4, align 8
  store %struct.in_addr* %1, %struct.in_addr** %5, align 8
  %10 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  %11 = load %struct.in_addr*, %struct.in_addr** %4, align 8
  %12 = call i32 @memcpy(%struct.in_addr* %10, %struct.in_addr* %11, i32 4)
  %13 = call i8* @htons(i32 60000)
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** @AF_INET, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 3
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  store i32 24, i32* %17, align 8
  %18 = load i32, i32* @INADDR_ANY, align 4
  %19 = call i32 @htonl(i32 %18)
  store i32 %19, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @get_iface.local, i32 0, i32 1, i32 0), align 4
  %20 = call i8* @htons(i32 60000)
  store i8* %20, i8** getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @get_iface.local, i32 0, i32 2), align 8
  %21 = load i8*, i8** @AF_INET, align 8
  store i8* %21, i8** getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @get_iface.local, i32 0, i32 3), align 8
  store i32 24, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @get_iface.local, i32 0, i32 0), align 8
  %22 = load i32, i32* @PF_INET, align 4
  %23 = load i32, i32* @SOCK_DGRAM, align 4
  %24 = call i32 @socket(i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %88

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @bind(i32 %30, %struct.sockaddr* bitcast (%struct.sockaddr_in* @get_iface.local to %struct.sockaddr*), i32 24)
  store i32 %31, i32* %9, align 4
  %32 = load i8*, i8** getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @get_iface.local, i32 0, i32 2), align 8
  %33 = call i32 @ntohs(i8* %32)
  %34 = add nsw i32 %33, 1
  %35 = call i8* @htons(i32 %34)
  store i8* %35, i8** getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @get_iface.local, i32 0, i32 2), align 8
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @EADDRINUSE, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i1 [ false, %36 ], [ %42, %39 ]
  br i1 %44, label %29, label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @close(i32 %49)
  store i32 -1, i32* %3, align 4
  br label %88

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %69, %51
  %53 = load i32, i32* %8, align 4
  %54 = bitcast %struct.sockaddr_in* %6 to %struct.sockaddr*
  %55 = call i32 @connect(i32 %53, %struct.sockaddr* %54, i32 24)
  store i32 %55, i32* %9, align 4
  %56 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @ntohs(i8* %57)
  %59 = add nsw i32 %58, 1
  %60 = call i8* @htons(i32 %59)
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 2
  store i8* %60, i8** %61, align 8
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i64, i64* @errno, align 8
  %67 = load i64, i64* @EADDRINUSE, align 8
  %68 = icmp eq i64 %66, %67
  br label %69

69:                                               ; preds = %65, %62
  %70 = phi i1 [ false, %62 ], [ %68, %65 ]
  br i1 %70, label %52, label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @close(i32 %75)
  store i32 -1, i32* %3, align 4
  br label %88

77:                                               ; preds = %71
  store i32 24, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @getsockname(i32 %78, %struct.sockaddr* bitcast (%struct.sockaddr_in* @get_iface.local to %struct.sockaddr*), i32* %7)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @close(i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 -1, i32* %3, align 4
  br label %88

85:                                               ; preds = %77
  %86 = load %struct.in_addr*, %struct.in_addr** %5, align 8
  %87 = call i32 @memcpy(%struct.in_addr* %86, %struct.in_addr* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @get_iface.local, i32 0, i32 1), i32 4)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %85, %84, %74, %48, %27
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @memcpy(%struct.in_addr*, %struct.in_addr*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @ntohs(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
