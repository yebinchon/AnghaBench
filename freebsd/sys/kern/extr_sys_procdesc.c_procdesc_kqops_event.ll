; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_procdesc.c_procdesc_kqops_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_procdesc.c_procdesc_kqops_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.procdesc* }
%struct.procdesc = type { i32, i32 }

@PDF_EXITED = common dso_local global i32 0, align 4
@NOTE_EXIT = common dso_local global i32 0, align 4
@NOTE_PCTRLMASK = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@EV_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, i64)* @procdesc_kqops_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @procdesc_kqops_event(%struct.knote* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.procdesc*, align 8
  %7 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.knote*, %struct.knote** %4, align 8
  %9 = getelementptr inbounds %struct.knote, %struct.knote* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.procdesc*, %struct.procdesc** %11, align 8
  store %struct.procdesc* %12, %struct.procdesc** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.procdesc*, %struct.procdesc** %6, align 8
  %17 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PDF_EXITED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @NOTE_EXIT, align 4
  br label %25

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  store i32 %26, i32* %7, align 4
  br label %32

27:                                               ; preds = %2
  %28 = load i64, i64* %5, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @NOTE_PCTRLMASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %27, %25
  %33 = load %struct.knote*, %struct.knote** %4, align 8
  %34 = getelementptr inbounds %struct.knote, %struct.knote* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.knote*, %struct.knote** %4, align 8
  %42 = getelementptr inbounds %struct.knote, %struct.knote* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %32
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @NOTE_EXIT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %45
  %50 = load i32, i32* @EV_EOF, align 4
  %51 = load i32, i32* @EV_ONESHOT, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.knote*, %struct.knote** %4, align 8
  %54 = getelementptr inbounds %struct.knote, %struct.knote* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.knote*, %struct.knote** %4, align 8
  %58 = getelementptr inbounds %struct.knote, %struct.knote* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NOTE_EXIT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %49
  %64 = load %struct.procdesc*, %struct.procdesc** %6, align 8
  %65 = getelementptr inbounds %struct.procdesc, %struct.procdesc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.knote*, %struct.knote** %4, align 8
  %68 = getelementptr inbounds %struct.knote, %struct.knote* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %49
  %70 = load %struct.knote*, %struct.knote** %4, align 8
  %71 = getelementptr inbounds %struct.knote, %struct.knote* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* @EV_DROP, align 4
  %76 = load %struct.knote*, %struct.knote** %4, align 8
  %77 = getelementptr inbounds %struct.knote, %struct.knote* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %74, %69
  store i32 1, i32* %3, align 4
  br label %87

81:                                               ; preds = %45
  %82 = load %struct.knote*, %struct.knote** %4, align 8
  %83 = getelementptr inbounds %struct.knote, %struct.knote* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %81, %80
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
