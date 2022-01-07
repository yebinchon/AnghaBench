; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_filt_procattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_filt_procattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.proc* }
%struct.proc = type { i32, i32 }

@NOTE_EXIT = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@P_WEXIT = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@EV_CLEAR = common dso_local global i32 0, align 4
@EV_FLAG2 = common dso_local global i32 0, align 4
@NOTE_CHILD = common dso_local global i32 0, align 4
@NOTE_EXEC = common dso_local global i32 0, align 4
@NOTE_FORK = common dso_local global i32 0, align 4
@EV_FLAG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*)* @filt_procattach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_procattach(%struct.knote* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.knote*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.knote*, %struct.knote** %3, align 8
  %9 = getelementptr inbounds %struct.knote, %struct.knote* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @NOTE_EXIT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.knote*, %struct.knote** %3, align 8
  %16 = getelementptr inbounds %struct.knote, %struct.knote* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.proc* @pfind_any(i32 %17)
  store %struct.proc* %18, %struct.proc** %4, align 8
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.knote*, %struct.knote** %3, align 8
  %21 = getelementptr inbounds %struct.knote, %struct.knote* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.proc* @pfind(i32 %22)
  store %struct.proc* %23, %struct.proc** %4, align 8
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.proc*, %struct.proc** %4, align 8
  %26 = icmp eq %struct.proc* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @ESRCH, align 4
  store i32 %28, i32* %2, align 4
  br label %123

29:                                               ; preds = %24
  %30 = load %struct.proc*, %struct.proc** %4, align 8
  %31 = getelementptr inbounds %struct.proc, %struct.proc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @P_WEXIT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* @curthread, align 4
  %39 = load %struct.proc*, %struct.proc** %4, align 8
  %40 = call i32 @p_cansee(i32 %38, %struct.proc* %39)
  store i32 %40, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.proc*, %struct.proc** %4, align 8
  %44 = call i32 @PROC_UNLOCK(%struct.proc* %43)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %123

46:                                               ; preds = %37
  %47 = load %struct.proc*, %struct.proc** %4, align 8
  %48 = load %struct.knote*, %struct.knote** %3, align 8
  %49 = getelementptr inbounds %struct.knote, %struct.knote* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store %struct.proc* %47, %struct.proc** %50, align 8
  %51 = load i32, i32* @EV_CLEAR, align 4
  %52 = load %struct.knote*, %struct.knote** %3, align 8
  %53 = getelementptr inbounds %struct.knote, %struct.knote* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.knote*, %struct.knote** %3, align 8
  %57 = getelementptr inbounds %struct.knote, %struct.knote* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EV_FLAG2, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %46
  %63 = load i32, i32* @EV_FLAG2, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.knote*, %struct.knote** %3, align 8
  %66 = getelementptr inbounds %struct.knote, %struct.knote* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.knote*, %struct.knote** %3, align 8
  %70 = getelementptr inbounds %struct.knote, %struct.knote* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.knote*, %struct.knote** %3, align 8
  %73 = getelementptr inbounds %struct.knote, %struct.knote* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @NOTE_CHILD, align 4
  %75 = load %struct.knote*, %struct.knote** %3, align 8
  %76 = getelementptr inbounds %struct.knote, %struct.knote* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @NOTE_EXIT, align 4
  %78 = load i32, i32* @NOTE_EXEC, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @NOTE_FORK, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load %struct.knote*, %struct.knote** %3, align 8
  %84 = getelementptr inbounds %struct.knote, %struct.knote* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 8
  store i32 1, i32* %7, align 4
  br label %87

87:                                               ; preds = %62, %46
  %88 = load %struct.knote*, %struct.knote** %3, align 8
  %89 = getelementptr inbounds %struct.knote, %struct.knote* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @EV_FLAG1, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load i32, i32* @EV_FLAG1, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.knote*, %struct.knote** %3, align 8
  %98 = getelementptr inbounds %struct.knote, %struct.knote* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %94, %87
  %102 = load %struct.proc*, %struct.proc** %4, align 8
  %103 = getelementptr inbounds %struct.proc, %struct.proc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.knote*, %struct.knote** %3, align 8
  %106 = call i32 @knlist_add(i32 %104, %struct.knote* %105, i32 1)
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %101
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load %struct.knote*, %struct.knote** %3, align 8
  %114 = load i32, i32* @NOTE_EXIT, align 4
  %115 = call i64 @filt_proc(%struct.knote* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112, %101
  %118 = load %struct.knote*, %struct.knote** %3, align 8
  %119 = call i32 @KNOTE_ACTIVATE(%struct.knote* %118, i32 0)
  br label %120

120:                                              ; preds = %117, %112, %109
  %121 = load %struct.proc*, %struct.proc** %4, align 8
  %122 = call i32 @PROC_UNLOCK(%struct.proc* %121)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %120, %42, %27
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.proc* @pfind_any(i32) #1

declare dso_local %struct.proc* @pfind(i32) #1

declare dso_local i32 @p_cansee(i32, %struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @knlist_add(i32, %struct.knote*, i32) #1

declare dso_local i64 @filt_proc(%struct.knote*, i32) #1

declare dso_local i32 @KNOTE_ACTIVATE(%struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
