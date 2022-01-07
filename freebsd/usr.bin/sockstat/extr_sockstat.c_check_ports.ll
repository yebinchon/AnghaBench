; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sockstat/extr_sockstat.c_check_ports.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sockstat/extr_sockstat.c_check_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, %struct.addr*, %struct.addr* }
%struct.addr = type { i32, %struct.addr* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ports = common dso_local global i32* null, align 8
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @check_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ports(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.addr*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %6 = load i32*, i32** @ports, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %97

9:                                                ; preds = %1
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AF_INET, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AF_INET6, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %97

22:                                               ; preds = %15, %9
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 2
  %25 = load %struct.addr*, %struct.addr** %24, align 8
  store %struct.addr* %25, %struct.addr** %5, align 8
  br label %26

26:                                               ; preds = %55, %22
  %27 = load %struct.addr*, %struct.addr** %5, align 8
  %28 = icmp ne %struct.addr* %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AF_INET, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.addr*, %struct.addr** %5, align 8
  %37 = getelementptr inbounds %struct.addr, %struct.addr* %36, i32 0, i32 0
  %38 = call %struct.TYPE_4__* @sstosin(i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ntohs(i32 %40)
  store i32 %41, i32* %4, align 4
  br label %49

42:                                               ; preds = %29
  %43 = load %struct.addr*, %struct.addr** %5, align 8
  %44 = getelementptr inbounds %struct.addr, %struct.addr* %43, i32 0, i32 0
  %45 = call %struct.TYPE_3__* @sstosin6(i32* %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ntohs(i32 %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %42, %35
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @CHK_PORT(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %2, align 4
  br label %97

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.addr*, %struct.addr** %5, align 8
  %57 = getelementptr inbounds %struct.addr, %struct.addr* %56, i32 0, i32 1
  %58 = load %struct.addr*, %struct.addr** %57, align 8
  store %struct.addr* %58, %struct.addr** %5, align 8
  br label %26

59:                                               ; preds = %26
  %60 = load %struct.sock*, %struct.sock** %3, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 1
  %62 = load %struct.addr*, %struct.addr** %61, align 8
  store %struct.addr* %62, %struct.addr** %5, align 8
  br label %63

63:                                               ; preds = %92, %59
  %64 = load %struct.addr*, %struct.addr** %5, align 8
  %65 = icmp ne %struct.addr* %64, null
  br i1 %65, label %66, label %96

66:                                               ; preds = %63
  %67 = load %struct.sock*, %struct.sock** %3, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AF_INET, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.addr*, %struct.addr** %5, align 8
  %74 = getelementptr inbounds %struct.addr, %struct.addr* %73, i32 0, i32 0
  %75 = call %struct.TYPE_4__* @sstosin(i32* %74)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ntohs(i32 %77)
  store i32 %78, i32* %4, align 4
  br label %86

79:                                               ; preds = %66
  %80 = load %struct.addr*, %struct.addr** %5, align 8
  %81 = getelementptr inbounds %struct.addr, %struct.addr* %80, i32 0, i32 0
  %82 = call %struct.TYPE_3__* @sstosin6(i32* %81)
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ntohs(i32 %84)
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %79, %72
  %87 = load i32, i32* %4, align 4
  %88 = call i64 @CHK_PORT(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 1, i32* %2, align 4
  br label %97

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.addr*, %struct.addr** %5, align 8
  %94 = getelementptr inbounds %struct.addr, %struct.addr* %93, i32 0, i32 1
  %95 = load %struct.addr*, %struct.addr** %94, align 8
  store %struct.addr* %95, %struct.addr** %5, align 8
  br label %63

96:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %90, %53, %21, %8
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.TYPE_4__* @sstosin(i32*) #1

declare dso_local %struct.TYPE_3__* @sstosin6(i32*) #1

declare dso_local i64 @CHK_PORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
