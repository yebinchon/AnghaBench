; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdmap/extr_kbdmap.c_do_vidfont.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdmap/extr_kbdmap.c_do_vidfont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keymap = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@dir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"font%s=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.keymap*)* @do_vidfont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_vidfont(%struct.keymap* %0) #0 {
  %2 = alloca %struct.keymap*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.keymap* %0, %struct.keymap** %2, align 8
  %7 = load i32, i32* @dir, align 4
  %8 = load %struct.keymap*, %struct.keymap** %2, align 8
  %9 = getelementptr inbounds %struct.keymap, %struct.keymap* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @asprintf(i8** %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %7, i8* %10)
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @vidcontrol(i8* %12)
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @free(i8* %14)
  %16 = load %struct.keymap*, %struct.keymap** %2, align 8
  %17 = getelementptr inbounds %struct.keymap, %struct.keymap* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @strdup(i8* %18)
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @strrchr(i8* %20, i8 signext 45)
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %1
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i8* @get_extension(i8* %33)
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i8*, i8** %6, align 8
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.keymap*, %struct.keymap** %2, align 8
  %41 = getelementptr inbounds %struct.keymap, %struct.keymap* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %42)
  br label %44

44:                                               ; preds = %37, %30
  br label %45

45:                                               ; preds = %44, %24, %1
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @free(i8* %46)
  ret void
}

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i32 @vidcontrol(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @get_extension(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
