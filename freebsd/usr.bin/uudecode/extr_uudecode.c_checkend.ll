; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/uudecode/extr_uudecode.c_checkend.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/uudecode/extr_uudecode.c_checkend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s: %s: %s\00", align 1
@infile = common dso_local global i32 0, align 4
@outfile = common dso_local global i32 0, align 4
@outfp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @checkend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkend(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i64 @strncmp(i8* %11, i8* %12, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = call i64 @strspn(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = call i64 @strlen(i8* %23)
  %25 = icmp ne i64 %20, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %16, %3
  %27 = load i32, i32* @infile, align 4
  %28 = load i32, i32* @outfile, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @warnx(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28, i8* %29)
  store i32 1, i32* %4, align 4
  br label %40

31:                                               ; preds = %16
  %32 = load i32, i32* @outfp, align 4
  %33 = call i64 @fclose(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @infile, align 4
  %37 = load i32, i32* @outfile, align 4
  %38 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %37)
  store i32 1, i32* %4, align 4
  br label %40

39:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %35, %26
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i32, i32, i8*) #1

declare dso_local i64 @fclose(i32) #1

declare dso_local i32 @warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
