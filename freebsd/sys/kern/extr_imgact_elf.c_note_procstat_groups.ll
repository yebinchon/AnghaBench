; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_elf.c_note_procstat_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_elf.c_note_procstat_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.proc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [13 x i8] c"invalid size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sbuf*, i64*)* @note_procstat_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @note_procstat_groups(i8* %0, %struct.sbuf* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sbuf*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sbuf* %1, %struct.sbuf** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.proc*
  store %struct.proc* %11, %struct.proc** %7, align 8
  %12 = load %struct.proc*, %struct.proc** %7, align 8
  %13 = getelementptr inbounds %struct.proc, %struct.proc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = add i64 4, %18
  store i64 %19, i64* %8, align 8
  %20 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %21 = icmp ne %struct.sbuf* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %3
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 4, i32* %9, align 4
  %29 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %30 = call i32 @sbuf_bcat(%struct.sbuf* %29, i32* %9, i32 4)
  %31 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %32 = load %struct.proc*, %struct.proc** %7, align 8
  %33 = getelementptr inbounds %struct.proc, %struct.proc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.proc*, %struct.proc** %7, align 8
  %38 = getelementptr inbounds %struct.proc, %struct.proc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = call i32 @sbuf_bcat(%struct.sbuf* %31, i32* %36, i32 %44)
  br label %46

46:                                               ; preds = %22, %3
  %47 = load i64, i64* %8, align 8
  %48 = load i64*, i64** %6, align 8
  store i64 %47, i64* %48, align 8
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sbuf_bcat(%struct.sbuf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
