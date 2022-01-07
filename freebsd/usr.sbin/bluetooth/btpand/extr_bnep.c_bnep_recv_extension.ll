; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_bnep.c_bnep_recv_extension.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_bnep.c_bnep_recv_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32, i32 }
%struct.TYPE_8__ = type { i64*, i64 }

@.str = private unnamed_addr constant [32 x i8] c"ignored spurious data in exthdr\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"exthdr malloc() failed: %m\00", align 1
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @bnep_recv_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnep_recv_extension(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  br label %8

8:                                                ; preds = %79, %1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %84

14:                                               ; preds = %8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %6, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 2
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %84

34:                                               ; preds = %14
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %53 [
    i32 128, label %36
  ]

36:                                               ; preds = %34
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = bitcast i32* %43 to i64*
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @bnep_recv_control(i32 %39, i64* %44, i64 %45, i32 1)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = call i32 @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %36
  br label %74

53:                                               ; preds = %34
  %54 = call %struct.TYPE_8__* @malloc(i32 16)
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %4, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = icmp eq %struct.TYPE_8__* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %74

59:                                               ; preds = %53
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = bitcast i32* %62 to i64*
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i64* %63, i64** %65, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = load i32, i32* @next, align 4
  %73 = call i32 @STAILQ_INSERT_TAIL(i32* %70, %struct.TYPE_8__* %71, i32 %72)
  br label %74

74:                                               ; preds = %59, %57, %52
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, 2
  %78 = call i32 @packet_adj(%struct.TYPE_7__* %75, i64 %77)
  br label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = call i64 @BNEP_TYPE_EXT(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %8, label %83

83:                                               ; preds = %79
  store i32 1, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %33, %13
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @bnep_recv_control(i32, i64*, i64, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @packet_adj(%struct.TYPE_7__*, i64) #1

declare dso_local i64 @BNEP_TYPE_EXT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
