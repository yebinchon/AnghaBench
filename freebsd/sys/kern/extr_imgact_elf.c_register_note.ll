; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_elf.c_register_note.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_elf.c_register_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.note_info_list = type { i32 }
%struct.note_info = type { i32, i64, i8*, i32 (i8*, i32*, i64*)* }

@M_TEMP = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@ELF_NOTE_ROUNDSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.note_info_list*, i32, i32 (i8*, i32*, i64*)*, i8*)* @register_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @register_note(%struct.note_info_list* %0, i32 %1, i32 (i8*, i32*, i64*)* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.note_info_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i8*, i32*, i64*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.note_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.note_info_list* %0, %struct.note_info_list** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i8*, i32*, i64*)* %2, i32 (i8*, i32*, i64*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %11, align 8
  %13 = load i32 (i8*, i32*, i64*)*, i32 (i8*, i32*, i64*)** %8, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call i32 %13(i8* %14, i32* null, i64* %11)
  %16 = load i32, i32* @M_TEMP, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.note_info* @malloc(i32 32, i32 %16, i32 %19)
  store %struct.note_info* %20, %struct.note_info** %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.note_info*, %struct.note_info** %10, align 8
  %23 = getelementptr inbounds %struct.note_info, %struct.note_info* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32 (i8*, i32*, i64*)*, i32 (i8*, i32*, i64*)** %8, align 8
  %25 = load %struct.note_info*, %struct.note_info** %10, align 8
  %26 = getelementptr inbounds %struct.note_info, %struct.note_info* %25, i32 0, i32 3
  store i32 (i8*, i32*, i64*)* %24, i32 (i8*, i32*, i64*)** %26, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.note_info*, %struct.note_info** %10, align 8
  %29 = getelementptr inbounds %struct.note_info, %struct.note_info* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.note_info*, %struct.note_info** %10, align 8
  %32 = getelementptr inbounds %struct.note_info, %struct.note_info* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.note_info_list*, %struct.note_info_list** %6, align 8
  %34 = load %struct.note_info*, %struct.note_info** %10, align 8
  %35 = load i32, i32* @link, align 4
  %36 = call i32 @TAILQ_INSERT_TAIL(%struct.note_info_list* %33, %struct.note_info* %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %4
  %40 = load i64, i64* %11, align 8
  store i64 %40, i64* %5, align 8
  br label %52

41:                                               ; preds = %4
  %42 = load i32, i32* @ELF_NOTE_ROUNDSIZE, align 4
  %43 = call i32 @roundup2(i64 4, i32 %42)
  %44 = sext i32 %43 to i64
  %45 = add i64 4, %44
  %46 = load i64, i64* %11, align 8
  %47 = load i32, i32* @ELF_NOTE_ROUNDSIZE, align 4
  %48 = call i32 @roundup2(i64 %46, i32 %47)
  %49 = sext i32 %48 to i64
  %50 = add i64 %45, %49
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %41, %39
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

declare dso_local %struct.note_info* @malloc(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.note_info_list*, %struct.note_info*, i32) #1

declare dso_local i32 @roundup2(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
