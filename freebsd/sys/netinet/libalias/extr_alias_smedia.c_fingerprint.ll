; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_smedia.c_fingerprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_smedia.c_fingerprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.alias_data = type { i64, i32*, i32*, i32*, i32* }

@TFTP_PORT_NUMBER = common dso_local global i64 0, align 8
@RTSP_CONTROL_PORT_NUMBER_1 = common dso_local global i64 0, align 8
@RTSP_CONTROL_PORT_NUMBER_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.alias_data*)* @fingerprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fingerprint(%struct.libalias* %0, %struct.alias_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libalias*, align 8
  %5 = alloca %struct.alias_data*, align 8
  store %struct.libalias* %0, %struct.libalias** %4, align 8
  store %struct.alias_data* %1, %struct.alias_data** %5, align 8
  %6 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %7 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %12 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %17 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %22 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ntohs(i32 %24)
  %26 = load i64, i64* @TFTP_PORT_NUMBER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %84

29:                                               ; preds = %20, %15, %10, %2
  %30 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %31 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %49, label %34

34:                                               ; preds = %29
  %35 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %36 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %41 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %46 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %39, %34, %29
  store i32 -1, i32* %3, align 4
  br label %84

50:                                               ; preds = %44
  %51 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %52 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @ntohs(i32 %54)
  %56 = load i64, i64* @RTSP_CONTROL_PORT_NUMBER_1, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %82, label %58

58:                                               ; preds = %50
  %59 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %60 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ntohs(i32 %62)
  %64 = load i64, i64* @RTSP_CONTROL_PORT_NUMBER_1, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %82, label %66

66:                                               ; preds = %58
  %67 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %68 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @ntohs(i32 %70)
  %72 = load i64, i64* @RTSP_CONTROL_PORT_NUMBER_2, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %66
  %75 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %76 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @ntohs(i32 %78)
  %80 = load i64, i64* @RTSP_CONTROL_PORT_NUMBER_2, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74, %66, %58, %50
  store i32 0, i32* %3, align 4
  br label %84

83:                                               ; preds = %74
  store i32 -1, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %82, %49, %28
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
