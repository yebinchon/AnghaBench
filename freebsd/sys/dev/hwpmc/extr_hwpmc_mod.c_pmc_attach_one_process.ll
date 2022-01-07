; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_attach_one_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_attach_one_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32, i32, i32 }
%struct.pmc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pmc_process = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pmc* }

@pmc_sx = common dso_local global i32 0, align 4
@SX_XLOCKED = common dso_local global i32 0, align 4
@PRC = common dso_local global i32 0, align 4
@ATT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"attach-one pm=%p ri=%d proc=%p (%d, %s)\00", align 1
@P_HWPMC = common dso_local global i32 0, align 4
@PMC_FLAG_ALLOCATE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PMC_F_ATTACHED_TO_OWNER = common dso_local global i32 0, align 4
@PMC_F_NEEDS_LOGFILE = common dso_local global i32 0, align 4
@PMC_F_ATTACH_DONE = common dso_local global i32 0, align 4
@PMC_PO_OWNS_LOGFILE = common dso_local global i32 0, align 4
@P_KPROC = common dso_local global i32 0, align 4
@kernelname = common dso_local global i8* null, align 8
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, %struct.pmc*)* @pmc_attach_one_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmc_attach_one_process(%struct.proc* %0, %struct.pmc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.pmc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pmc_process*, align 8
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.pmc* %1, %struct.pmc** %5, align 8
  %11 = load i32, i32* @SX_XLOCKED, align 4
  %12 = call i32 @sx_assert(i32* @pmc_sx, i32 %11)
  %13 = load i32, i32* @PRC, align 4
  %14 = load i32, i32* @ATT, align 4
  %15 = load %struct.pmc*, %struct.pmc** %5, align 8
  %16 = load %struct.pmc*, %struct.pmc** %5, align 8
  %17 = call i32 @PMC_TO_ROWINDEX(%struct.pmc* %16)
  %18 = load %struct.proc*, %struct.proc** %4, align 8
  %19 = load %struct.proc*, %struct.proc** %4, align 8
  %20 = getelementptr inbounds %struct.proc, %struct.proc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.proc*, %struct.proc** %4, align 8
  %23 = getelementptr inbounds %struct.proc, %struct.proc* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PMCDBG5(i32 %13, i32 %14, i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.pmc* %15, i32 %17, %struct.proc* %18, i32 %21, i32 %24)
  %26 = load %struct.pmc*, %struct.pmc** %5, align 8
  %27 = call i32 @PMC_TO_ROWINDEX(%struct.pmc* %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.proc*, %struct.proc** %4, align 8
  %29 = call i32 @PROC_LOCK(%struct.proc* %28)
  %30 = load i32, i32* @P_HWPMC, align 4
  %31 = load %struct.proc*, %struct.proc** %4, align 8
  %32 = getelementptr inbounds %struct.proc, %struct.proc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.proc*, %struct.proc** %4, align 8
  %36 = call i32 @PROC_UNLOCK(%struct.proc* %35)
  %37 = load %struct.proc*, %struct.proc** %4, align 8
  %38 = load i32, i32* @PMC_FLAG_ALLOCATE, align 4
  %39 = call %struct.pmc_process* @pmc_find_process_descriptor(%struct.proc* %37, i32 %38)
  store %struct.pmc_process* %39, %struct.pmc_process** %10, align 8
  %40 = icmp eq %struct.pmc_process* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = load i32, i32* @ENOMEM, align 4
  store i32 %42, i32* %7, align 4
  br label %139

43:                                               ; preds = %2
  %44 = load %struct.pmc_process*, %struct.pmc_process** %10, align 8
  %45 = getelementptr inbounds %struct.pmc_process, %struct.pmc_process* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.pmc*, %struct.pmc** %50, align 8
  %52 = load %struct.pmc*, %struct.pmc** %5, align 8
  %53 = icmp eq %struct.pmc* %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @EEXIST, align 4
  store i32 %55, i32* %7, align 4
  br label %139

56:                                               ; preds = %43
  %57 = load %struct.pmc_process*, %struct.pmc_process** %10, align 8
  %58 = getelementptr inbounds %struct.pmc_process, %struct.pmc_process* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load %struct.pmc*, %struct.pmc** %63, align 8
  %65 = icmp ne %struct.pmc* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* @EBUSY, align 4
  store i32 %67, i32* %7, align 4
  br label %139

68:                                               ; preds = %56
  %69 = load %struct.pmc*, %struct.pmc** %5, align 8
  %70 = load %struct.pmc_process*, %struct.pmc_process** %10, align 8
  %71 = call i32 @pmc_link_target_process(%struct.pmc* %69, %struct.pmc_process* %70)
  %72 = load %struct.pmc*, %struct.pmc** %5, align 8
  %73 = call i32 @PMC_TO_MODE(%struct.pmc* %72)
  %74 = call i64 @PMC_IS_SAMPLING_MODE(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %68
  %77 = load %struct.pmc*, %struct.pmc** %5, align 8
  %78 = getelementptr inbounds %struct.pmc, %struct.pmc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @PMC_F_ATTACHED_TO_OWNER, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load i32, i32* @PMC_F_NEEDS_LOGFILE, align 4
  %85 = load %struct.pmc*, %struct.pmc** %5, align 8
  %86 = getelementptr inbounds %struct.pmc, %struct.pmc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %76, %68
  %90 = load i32, i32* @PMC_F_ATTACH_DONE, align 4
  %91 = load %struct.pmc*, %struct.pmc** %5, align 8
  %92 = getelementptr inbounds %struct.pmc, %struct.pmc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.pmc*, %struct.pmc** %5, align 8
  %96 = getelementptr inbounds %struct.pmc, %struct.pmc* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @PMC_PO_OWNS_LOGFILE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %138

103:                                              ; preds = %89
  %104 = load %struct.proc*, %struct.proc** %4, align 8
  %105 = getelementptr inbounds %struct.proc, %struct.proc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @P_KPROC, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i8*, i8** @kernelname, align 8
  store i8* %111, i8** %8, align 8
  store i8* null, i8** %9, align 8
  br label %123

112:                                              ; preds = %103
  %113 = load %struct.proc*, %struct.proc** %4, align 8
  %114 = getelementptr inbounds %struct.proc, %struct.proc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @pmc_getfilename(i32 %115, i8** %8, i8** %9)
  %117 = load %struct.pmc*, %struct.pmc** %5, align 8
  %118 = load %struct.proc*, %struct.proc** %4, align 8
  %119 = getelementptr inbounds %struct.proc, %struct.proc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @pmclog_process_pmcattach(%struct.pmc* %117, i32 %120, i8* %121)
  br label %123

123:                                              ; preds = %112, %110
  %124 = load i8*, i8** %9, align 8
  %125 = load i32, i32* @M_TEMP, align 4
  %126 = call i32 @free(i8* %124, i32 %125)
  %127 = load %struct.pmc*, %struct.pmc** %5, align 8
  %128 = call i32 @PMC_TO_MODE(%struct.pmc* %127)
  %129 = call i64 @PMC_IS_SAMPLING_MODE(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %123
  %132 = load %struct.pmc*, %struct.pmc** %5, align 8
  %133 = getelementptr inbounds %struct.pmc, %struct.pmc* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load %struct.proc*, %struct.proc** %4, align 8
  %136 = call i32 @pmc_log_process_mappings(%struct.TYPE_4__* %134, %struct.proc* %135)
  br label %137

137:                                              ; preds = %131, %123
  br label %138

138:                                              ; preds = %137, %89
  store i32 0, i32* %3, align 4
  br label %151

139:                                              ; preds = %66, %54, %41
  %140 = load %struct.proc*, %struct.proc** %4, align 8
  %141 = call i32 @PROC_LOCK(%struct.proc* %140)
  %142 = load i32, i32* @P_HWPMC, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.proc*, %struct.proc** %4, align 8
  %145 = getelementptr inbounds %struct.proc, %struct.proc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 4
  %148 = load %struct.proc*, %struct.proc** %4, align 8
  %149 = call i32 @PROC_UNLOCK(%struct.proc* %148)
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %139, %138
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @PMCDBG5(i32, i32, i32, i8*, %struct.pmc*, i32, %struct.proc*, i32, i32) #1

declare dso_local i32 @PMC_TO_ROWINDEX(%struct.pmc*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local %struct.pmc_process* @pmc_find_process_descriptor(%struct.proc*, i32) #1

declare dso_local i32 @pmc_link_target_process(%struct.pmc*, %struct.pmc_process*) #1

declare dso_local i64 @PMC_IS_SAMPLING_MODE(i32) #1

declare dso_local i32 @PMC_TO_MODE(%struct.pmc*) #1

declare dso_local i32 @pmc_getfilename(i32, i8**, i8**) #1

declare dso_local i32 @pmclog_process_pmcattach(%struct.pmc*, i32, i8*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @pmc_log_process_mappings(%struct.TYPE_4__*, %struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
