; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_add_keymap_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_add_keymap_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pathent = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@pathlist = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @add_keymap_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_keymap_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pathent*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* %5)
  store i64 %6, i64* %4, align 8
  %7 = call i8* @malloc(i64 8)
  %8 = bitcast i8* %7 to %struct.pathent*
  store %struct.pathent* %8, %struct.pathent** %3, align 8
  %9 = icmp eq %struct.pathent* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = add i64 %11, 2
  %13 = call i8* @malloc(i64 %12)
  %14 = load %struct.pathent*, %struct.pathent** %3, align 8
  %15 = getelementptr inbounds %struct.pathent, %struct.pathent* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = icmp eq i8* %13, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %10, %1
  %18 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %10
  %20 = load %struct.pathent*, %struct.pathent** %3, align 8
  %21 = getelementptr inbounds %struct.pathent, %struct.pathent* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @memcpy(i8* %22, i8* %23, i64 %24)
  %26 = load i64, i64* %4, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %19
  %29 = load i8*, i8** %2, align 8
  %30 = load i64, i64* %4, align 8
  %31 = sub i64 %30, 1
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 47
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.pathent*, %struct.pathent** %3, align 8
  %38 = getelementptr inbounds %struct.pathent, %struct.pathent* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %4, align 8
  %42 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8 47, i8* %42, align 1
  br label %43

43:                                               ; preds = %36, %28, %19
  %44 = load %struct.pathent*, %struct.pathent** %3, align 8
  %45 = getelementptr inbounds %struct.pathent, %struct.pathent* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load %struct.pathent*, %struct.pathent** %3, align 8
  %50 = load i32, i32* @next, align 4
  %51 = call i32 @STAILQ_INSERT_TAIL(i32* @pathlist, %struct.pathent* %49, i32 %50)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.pathent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
