; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_main.c_kevent_to_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_main.c_kevent_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i64*, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [73 x i8] c"[ident=%ju, filter=%d, %s, %s, data=%jd, udata=%p, ext=[%jx %jx %jx %jx]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kevent_to_str(%struct.kevent* %0) #0 {
  %2 = alloca %struct.kevent*, align 8
  %3 = alloca [512 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.kevent* %0, %struct.kevent** %2, align 8
  %6 = load %struct.kevent*, %struct.kevent** %2, align 8
  %7 = call i8* @kevent_flags_dump(%struct.kevent* %6)
  store i8* %7, i8** %4, align 8
  %8 = load %struct.kevent*, %struct.kevent** %2, align 8
  %9 = call i8* @kevent_fflags_dump(%struct.kevent* %8)
  store i8* %9, i8** %5, align 8
  %10 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %11 = load %struct.kevent*, %struct.kevent** %2, align 8
  %12 = getelementptr inbounds %struct.kevent, %struct.kevent* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = load %struct.kevent*, %struct.kevent** %2, align 8
  %16 = getelementptr inbounds %struct.kevent, %struct.kevent* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.kevent*, %struct.kevent** %2, align 8
  %21 = getelementptr inbounds %struct.kevent, %struct.kevent* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.kevent*, %struct.kevent** %2, align 8
  %25 = getelementptr inbounds %struct.kevent, %struct.kevent* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.kevent*, %struct.kevent** %2, align 8
  %28 = getelementptr inbounds %struct.kevent, %struct.kevent* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.kevent*, %struct.kevent** %2, align 8
  %34 = getelementptr inbounds %struct.kevent, %struct.kevent* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.kevent*, %struct.kevent** %2, align 8
  %40 = getelementptr inbounds %struct.kevent, %struct.kevent* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 2
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.kevent*, %struct.kevent** %2, align 8
  %46 = getelementptr inbounds %struct.kevent, %struct.kevent* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 3
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @snprintf(i8* %10, i32 512, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i8* %18, i8* %19, i32 %23, i32 %26, i32 %32, i32 %38, i32 %44, i32 %50)
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @free(i8* %54)
  %56 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %57 = call i8* @strdup(i8* %56)
  ret i8* %57
}

declare dso_local i8* @kevent_flags_dump(%struct.kevent*) #1

declare dso_local i8* @kevent_fflags_dump(%struct.kevent*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
