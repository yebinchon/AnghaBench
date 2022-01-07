; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/switch_tls/extr_switch_tls.c_tcpswitchall.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/switch_tls/extr_switch_tls.c_tcpswitchall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xinpgen = type { i32, i64 }
%struct.xtcpcb = type { i64, i32, %struct.xinpcb }
%struct.xinpcb = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"net.inet.tcp.pcblist\00", align 1
@TCPS_LISTEN = common dso_local global i64 0, align 8
@TCP_FUNCTION_NAME_LEN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @tcpswitchall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpswitchall(i8* %0, i32 %1) #0 {
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

19:                                               ; preds = %68, %2
  %20 = load %struct.xinpgen*, %struct.xinpgen** %6, align 8
  %21 = getelementptr inbounds %struct.xinpgen, %struct.xinpgen* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ugt i64 %23, 16
  br i1 %24, label %25, label %77

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
  br label %68

38:                                               ; preds = %25
  %39 = load %struct.xtcpcb*, %struct.xtcpcb** %7, align 8
  %40 = getelementptr inbounds %struct.xtcpcb, %struct.xtcpcb* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TCPS_LISTEN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %68

45:                                               ; preds = %38
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.xtcpcb*, %struct.xtcpcb** %7, align 8
  %53 = getelementptr inbounds %struct.xtcpcb, %struct.xtcpcb* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* @TCP_FUNCTION_NAME_LEN_MAX, align 4
  %57 = call i64 @strncmp(i32 %54, i8* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %68

60:                                               ; preds = %51, %45
  %61 = load %struct.xinpcb*, %struct.xinpcb** %8, align 8
  %62 = getelementptr inbounds %struct.xinpcb, %struct.xinpcb* %61, i32 0, i32 1
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @tcpswitchconn(i32* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %66, %60
  br label %68

68:                                               ; preds = %67, %59, %44, %37
  %69 = load %struct.xinpgen*, %struct.xinpgen** %6, align 8
  %70 = ptrtoint %struct.xinpgen* %69 to i64
  %71 = load %struct.xinpgen*, %struct.xinpgen** %6, align 8
  %72 = getelementptr inbounds %struct.xinpgen, %struct.xinpgen* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = add i64 %70, %74
  %76 = inttoptr i64 %75 to %struct.xinpgen*
  store %struct.xinpgen* %76, %struct.xinpgen** %6, align 8
  br label %19

77:                                               ; preds = %19
  %78 = load %struct.xinpgen*, %struct.xinpgen** %5, align 8
  %79 = call i32 @free(%struct.xinpgen* %78)
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local %struct.xinpgen* @getxpcblist(i8*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @tcpswitchconn(i32*, i32) #1

declare dso_local i32 @free(%struct.xinpgen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
