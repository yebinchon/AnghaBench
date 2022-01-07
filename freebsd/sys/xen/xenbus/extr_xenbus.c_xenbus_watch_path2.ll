; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbus.c_xenbus_watch_path2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbus.c_xenbus_watch_path2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xs_watch = type { i32 }

@M_XENBUS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbus_watch_path2(i32 %0, i8* %1, i8* %2, %struct.xs_watch* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.xs_watch*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.xs_watch* %3, %struct.xs_watch** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = add nsw i64 %16, 1
  %18 = load i8*, i8** %9, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = add nsw i64 %17, %19
  %21 = add nsw i64 %20, 1
  %22 = load i32, i32* @M_XENBUS, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = call i8* @malloc(i64 %21, i32 %22, i32 %23)
  store i8* %24, i8** %14, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @strcpy(i8* %25, i8* %26)
  %28 = load i8*, i8** %14, align 8
  %29 = call i32 @strcat(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** %14, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @strcat(i8* %30, i8* %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i8*, i8** %14, align 8
  %35 = load %struct.xs_watch*, %struct.xs_watch** %10, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @xenbus_watch_path(i32 %33, i8* %34, %struct.xs_watch* %35, i32* %36, i64 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %6
  %42 = load i8*, i8** %14, align 8
  %43 = load i32, i32* @M_XENBUS, align 4
  %44 = call i32 @free(i8* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %6
  %46 = load i32, i32* %13, align 4
  ret i32 %46
}

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @xenbus_watch_path(i32, i8*, %struct.xs_watch*, i32*, i64) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
