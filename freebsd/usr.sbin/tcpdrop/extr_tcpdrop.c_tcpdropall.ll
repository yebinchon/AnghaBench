; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/tcpdrop/extr_tcpdrop.c_tcpdropall.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/tcpdrop/extr_tcpdrop.c_tcpdropall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xinpgen = type { i32, i64 }
%struct.xtcpcb = type { i32, i32, %struct.xinpcb }
%struct.xinpcb = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"net.inet.tcp.pcblist\00", align 1
@TCPS_LISTEN = common dso_local global i32 0, align 4
@TCP_FUNCTION_NAME_LEN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @tcpdropall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpdropall(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xinpgen*, align 8
  %6 = alloca %struct.xinpgen*, align 8
  %7 = alloca %struct.xtcpcb*, align 8
  %8 = alloca %struct.xinpcb*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %9, align 4
  %10 = call %struct.xinpgen* @getxpcblist(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store %struct.xinpgen* %10, %struct.xinpgen** %5, align 8
  %11 = load %struct.xinpgen*, %struct.xinpgen** %5, align 8
  %12 = ptrtoint %struct.xinpgen* %11 to i64
  %13 = load %struct.xinpgen*, %struct.xinpgen** %5, align 8
  %14 = getelementptr inbounds %struct.xinpgen, %struct.xinpgen* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = add i64 %12, %16
  %18 = inttoptr i64 %17 to %struct.xinpgen*
  store %struct.xinpgen* %18, %struct.xinpgen** %6, align 8
  br label %19

19:                                               ; preds = %77, %2
  %20 = load %struct.xinpgen*, %struct.xinpgen** %6, align 8
  %21 = getelementptr inbounds %struct.xinpgen, %struct.xinpgen* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ugt i64 %23, 16
  br i1 %24, label %25, label %86

25:                                               ; preds = %19
  %26 = load %struct.xinpgen*, %struct.xinpgen** %6, align 8
  %27 = bitcast %struct.xinpgen* %26 to %struct.xtcpcb*
  store %struct.xtcpcb* %27, %struct.xtcpcb** %7, align 8
  %28 = load %struct.xtcpcb*, %struct.xtcpcb** %7, align 8
  %29 = getelementptr inbounds %struct.xtcpcb, %struct.xtcpcb* %28, i32 0, i32 2
  store %struct.xinpcb* %29, %struct.xinpcb** %8, align 8
  %30 = load %struct.xinpcb*, %struct.xinpcb** %8, align 8
  %31 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.xinpgen*, %struct.xinpgen** %5, align 8
  %34 = getelementptr inbounds %struct.xinpgen, %struct.xinpgen* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %77

38:                                               ; preds = %25
  %39 = load %struct.xtcpcb*, %struct.xtcpcb** %7, align 8
  %40 = getelementptr inbounds %struct.xtcpcb, %struct.xtcpcb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @TCPS_LISTEN, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %77

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.xtcpcb*, %struct.xtcpcb** %7, align 8
  %50 = getelementptr inbounds %struct.xtcpcb, %struct.xtcpcb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %77

55:                                               ; preds = %48, %45
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.xtcpcb*, %struct.xtcpcb** %7, align 8
  %63 = getelementptr inbounds %struct.xtcpcb, %struct.xtcpcb* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %3, align 8
  %66 = load i32, i32* @TCP_FUNCTION_NAME_LEN_MAX, align 4
  %67 = call i64 @strncmp(i32 %64, i8* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %77

70:                                               ; preds = %61, %55
  %71 = load %struct.xinpcb*, %struct.xinpcb** %8, align 8
  %72 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %71, i32 0, i32 1
  %73 = call i32 @tcpdropconn(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %75, %70
  br label %77

77:                                               ; preds = %76, %69, %54, %44, %37
  %78 = load %struct.xinpgen*, %struct.xinpgen** %6, align 8
  %79 = ptrtoint %struct.xinpgen* %78 to i64
  %80 = load %struct.xinpgen*, %struct.xinpgen** %6, align 8
  %81 = getelementptr inbounds %struct.xinpgen, %struct.xinpgen* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = add i64 %79, %83
  %85 = inttoptr i64 %84 to %struct.xinpgen*
  store %struct.xinpgen* %85, %struct.xinpgen** %6, align 8
  br label %19

86:                                               ; preds = %19
  %87 = load %struct.xinpgen*, %struct.xinpgen** %5, align 8
  %88 = call i32 @free(%struct.xinpgen* %87)
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

declare dso_local %struct.xinpgen* @getxpcblist(i8*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @tcpdropconn(i32*) #1

declare dso_local i32 @free(%struct.xinpgen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
