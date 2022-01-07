; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_gbincore.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_gbincore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.bufobj = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buf* @gbincore(%struct.bufobj* %0, i32 %1) #0 {
  %3 = alloca %struct.buf*, align 8
  %4 = alloca %struct.bufobj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buf*, align 8
  store %struct.bufobj* %0, %struct.bufobj** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %8 = call i32 @ASSERT_BO_LOCKED(%struct.bufobj* %7)
  %9 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %10 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.buf* @BUF_PCTRIE_LOOKUP(i32* %11, i32 %12)
  store %struct.buf* %13, %struct.buf** %6, align 8
  %14 = load %struct.buf*, %struct.buf** %6, align 8
  %15 = icmp ne %struct.buf* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load %struct.buf*, %struct.buf** %6, align 8
  store %struct.buf* %17, %struct.buf** %3, align 8
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.bufobj*, %struct.bufobj** %4, align 8
  %20 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.buf* @BUF_PCTRIE_LOOKUP(i32* %21, i32 %22)
  store %struct.buf* %23, %struct.buf** %3, align 8
  br label %24

24:                                               ; preds = %18, %16
  %25 = load %struct.buf*, %struct.buf** %3, align 8
  ret %struct.buf* %25
}

declare dso_local i32 @ASSERT_BO_LOCKED(%struct.bufobj*) #1

declare dso_local %struct.buf* @BUF_PCTRIE_LOOKUP(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
