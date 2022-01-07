; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_reg_fcfi_mrq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_reg_fcfi_mrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, i64, i64, i32, i32, i32, i32, %struct.TYPE_7__*, i64, i8*, i32, i8*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@SLI4_CMD_REG_FCFI_NUM_RQ_CFG = common dso_local global i64 0, align 8
@SLI4_MBOX_COMMAND_REG_FCFI_MRQ = common dso_local global i32 0, align 4
@SLI4_CMD_REG_FCFI_SET_FCFI_MODE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cmd_reg_fcfi_mrq(i32* %0, i8* %1, i64 %2, i64 %3, i8* %4, i8* %5, i64 %6, i64 %7, i8* %8, %struct.TYPE_8__* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i64 %7, i64* %18, align 8
  store i8* %8, i8** %19, align 8
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %20, align 8
  %23 = load i64, i64* @SLI4_CMD_REG_FCFI_NUM_RQ_CFG, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %21, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load i64, i64* %13, align 8
  %28 = call i32 @ocs_memset(i8* %26, i32 0, i64 %27)
  %29 = load i32, i32* @SLI4_MBOX_COMMAND_REG_FCFI_MRQ, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 12
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* @SLI4_CMD_REG_FCFI_SET_FCFI_MODE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %10
  %37 = load i8*, i8** %15, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 11
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32, i32* @TRUE, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 10
  store i32 %43, i32* %45, align 8
  %46 = load i8*, i8** %16, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 9
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %42, %36
  br label %150

50:                                               ; preds = %10
  %51 = load i64, i64* %14, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 8
  store i64 %51, i64* %53, align 8
  store i64 0, i64* %22, align 8
  br label %54

54:                                               ; preds = %137, %50
  %55 = load i64, i64* %22, align 8
  %56 = load i64, i64* @SLI4_CMD_REG_FCFI_NUM_RQ_CFG, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %140

58:                                               ; preds = %54
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %60 = load i64, i64* %22, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 7
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i64, i64* %22, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  store i32 %63, i32* %69, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %71 = load i64, i64* %22, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 7
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load i64, i64* %22, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  store i32 %74, i32* %80, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %82 = load i64, i64* %22, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 7
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = load i64, i64* %22, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32 %85, i32* %91, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %93 = load i64, i64* %22, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 7
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i64, i64* %22, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 %96, i32* %102, align 4
  %103 = load i64, i64* %22, align 8
  switch i64 %103, label %136 [
    i64 3, label %104
    i64 2, label %112
    i64 1, label %120
    i64 0, label %128
  ]

104:                                              ; preds = %58
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %106 = load i64, i64* %22, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 4
  br label %136

112:                                              ; preds = %58
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %114 = load i64, i64* %22, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 8
  br label %136

120:                                              ; preds = %58
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %122 = load i64, i64* %22, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  br label %136

128:                                              ; preds = %58
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %130 = load i64, i64* %22, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %58, %128, %120, %112, %104
  br label %137

137:                                              ; preds = %136
  %138 = load i64, i64* %22, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %22, align 8
  br label %54

140:                                              ; preds = %54
  %141 = load i64, i64* %17, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = load i64, i64* %18, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  %147 = load i8*, i8** %19, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  br label %150

150:                                              ; preds = %140, %49
  ret i32 88
}

declare dso_local i32 @ocs_memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
