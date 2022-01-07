; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctladm/extr_ctladm.c_cctl_report_luns.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctladm/extr_ctladm.c_cctl_report_luns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_report_luns_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%u LUNs returned\0A\00", align 1
@RPL_LUNDATA_ATYP_MASK = common dso_local global i32 0, align 4
@RPL_LUNDATA_FLAT_LUN_MASK = common dso_local global i32 0, align 4
@RPL_LUNDATA_FLAT_LUN_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unsupported LUN format %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @cctl_report_luns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cctl_report_luns(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_report_luns_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.scsi_report_luns_data* null, %struct.scsi_report_luns_data** %9, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @cctl_get_luns(i32 %14, i32 %15, i32 %16, i32 %17, %struct.scsi_report_luns_data** %9, i32* %10)
  store i32 %18, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %107

21:                                               ; preds = %4
  %22 = load i32, i32* @stdout, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %103, %21
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %106

29:                                               ; preds = %25
  %30 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %9, align 8
  %31 = getelementptr inbounds %struct.scsi_report_luns_data, %struct.scsi_report_luns_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RPL_LUNDATA_ATYP_MASK, align 4
  %41 = and i32 %39, %40
  switch i32 %41, label %80 [
    i32 128, label %42
    i32 130, label %53
    i32 129, label %79
    i32 131, label %79
  ]

42:                                               ; preds = %29
  %43 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %9, align 8
  %44 = getelementptr inbounds %struct.scsi_report_luns_data, %struct.scsi_report_luns_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %13, align 4
  br label %95

53:                                               ; preds = %29
  %54 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %9, align 8
  %55 = getelementptr inbounds %struct.scsi_report_luns_data, %struct.scsi_report_luns_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RPL_LUNDATA_FLAT_LUN_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %9, align 8
  %67 = getelementptr inbounds %struct.scsi_report_luns_data, %struct.scsi_report_luns_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RPL_LUNDATA_FLAT_LUN_BITS, align 4
  %77 = shl i32 %75, %76
  %78 = or i32 %65, %77
  store i32 %78, i32* %13, align 4
  br label %95

79:                                               ; preds = %29, %29
  br label %80

80:                                               ; preds = %29, %79
  %81 = load i32, i32* @stdout, align 4
  %82 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %9, align 8
  %83 = getelementptr inbounds %struct.scsi_report_luns_data, %struct.scsi_report_luns_data* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @RPL_LUNDATA_ATYP_MASK, align 4
  %93 = and i32 %91, %92
  %94 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  store i32 -1, i32* %13, align 4
  br label %95

95:                                               ; preds = %80, %53, %42
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %103

99:                                               ; preds = %95
  %100 = load i32, i32* @stdout, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @fprintf(i32 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %99, %98
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %25

106:                                              ; preds = %25
  br label %107

107:                                              ; preds = %106, %20
  %108 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %9, align 8
  %109 = icmp ne %struct.scsi_report_luns_data* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %9, align 8
  %112 = call i32 @free(%struct.scsi_report_luns_data* %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i32, i32* %12, align 4
  ret i32 %114
}

declare dso_local i32 @cctl_get_luns(i32, i32, i32, i32, %struct.scsi_report_luns_data**, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @free(%struct.scsi_report_luns_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
