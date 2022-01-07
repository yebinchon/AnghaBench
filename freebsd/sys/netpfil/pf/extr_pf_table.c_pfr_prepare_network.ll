; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_prepare_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_table.c_pfr_prepare_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sockaddr_union = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.sockaddr_union*, i32, i32)* @pfr_prepare_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_prepare_network(%union.sockaddr_union* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %union.sockaddr_union*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %union.sockaddr_union* %0, %union.sockaddr_union** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %union.sockaddr_union*, %union.sockaddr_union** %4, align 8
  %9 = call i32 @bzero(%union.sockaddr_union* %8, i32 16)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @AF_INET, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %3
  %14 = load %union.sockaddr_union*, %union.sockaddr_union** %4, align 8
  %15 = bitcast %union.sockaddr_union* %14 to %struct.TYPE_6__*
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 16, i32* %16, align 8
  %17 = load i32, i32* @AF_INET, align 4
  %18 = load %union.sockaddr_union*, %union.sockaddr_union** %4, align 8
  %19 = bitcast %union.sockaddr_union* %18 to %struct.TYPE_6__*
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 32, %24
  %26 = shl i32 -1, %25
  %27 = call i8* @htonl(i32 %26)
  br label %29

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28, %23
  %30 = phi i8* [ %27, %23 ], [ null, %28 ]
  %31 = load %union.sockaddr_union*, %union.sockaddr_union** %4, align 8
  %32 = bitcast %union.sockaddr_union* %31 to %struct.TYPE_6__*
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i8* %30, i8** %34, align 8
  br label %89

35:                                               ; preds = %3
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @AF_INET6, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %88

39:                                               ; preds = %35
  %40 = load %union.sockaddr_union*, %union.sockaddr_union** %4, align 8
  %41 = bitcast %union.sockaddr_union* %40 to %struct.TYPE_8__*
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 16, i32* %42, align 8
  %43 = load i32, i32* @AF_INET6, align 4
  %44 = load %union.sockaddr_union*, %union.sockaddr_union** %4, align 8
  %45 = bitcast %union.sockaddr_union* %44 to %struct.TYPE_8__*
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %84, %39
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %87

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = icmp sle i32 %51, 32
  br i1 %52, label %53, label %73

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 32, %57
  %59 = shl i32 -1, %58
  %60 = call i8* @htonl(i32 %59)
  br label %62

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %56
  %63 = phi i8* [ %60, %56 ], [ null, %61 ]
  %64 = ptrtoint i8* %63 to i32
  %65 = load %union.sockaddr_union*, %union.sockaddr_union** %4, align 8
  %66 = bitcast %union.sockaddr_union* %65 to %struct.TYPE_8__*
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %64, i32* %72, align 4
  br label %87

73:                                               ; preds = %50
  %74 = load %union.sockaddr_union*, %union.sockaddr_union** %4, align 8
  %75 = bitcast %union.sockaddr_union* %74 to %struct.TYPE_8__*
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 -1, i32* %81, align 4
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, 32
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %73
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %47

87:                                               ; preds = %62, %47
  br label %88

88:                                               ; preds = %87, %35
  br label %89

89:                                               ; preds = %88, %29
  ret void
}

declare dso_local i32 @bzero(%union.sockaddr_union*, i32) #1

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
