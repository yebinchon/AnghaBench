; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/xstr/extr_xstr.c_hashit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/xstr/extr_xstr.c_hashit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash = type { i32, i64, %struct.hash*, i32 }

@bucket = common dso_local global %struct.hash* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@mesgpt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32)* @hashit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hashit(i8* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hash*, align 8
  %8 = alloca %struct.hash*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hash*, %struct.hash** @bucket, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @lastchr(i8* %10)
  %12 = and i32 %11, 127
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.hash, %struct.hash* %9, i64 %13
  store %struct.hash* %14, %struct.hash** %8, align 8
  store %struct.hash* %14, %struct.hash** %7, align 8
  br label %15

15:                                               ; preds = %38, %2
  %16 = load %struct.hash*, %struct.hash** %7, align 8
  %17 = getelementptr inbounds %struct.hash, %struct.hash* %16, i32 0, i32 2
  %18 = load %struct.hash*, %struct.hash** %17, align 8
  %19 = icmp ne %struct.hash* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = load %struct.hash*, %struct.hash** %7, align 8
  %22 = getelementptr inbounds %struct.hash, %struct.hash* %21, i32 0, i32 2
  %23 = load %struct.hash*, %struct.hash** %22, align 8
  store %struct.hash* %23, %struct.hash** %7, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.hash*, %struct.hash** %7, align 8
  %26 = getelementptr inbounds %struct.hash, %struct.hash* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @istail(i8* %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load %struct.hash*, %struct.hash** %7, align 8
  %33 = getelementptr inbounds %struct.hash, %struct.hash* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  store i64 %37, i64* %3, align 8
  br label %78

38:                                               ; preds = %20
  br label %15

39:                                               ; preds = %15
  %40 = call i64 @calloc(i32 1, i32 32)
  %41 = inttoptr i64 %40 to %struct.hash*
  store %struct.hash* %41, %struct.hash** %7, align 8
  %42 = icmp eq %struct.hash* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = call i32 @errx(i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i64, i64* @mesgpt, align 8
  %47 = load %struct.hash*, %struct.hash** %7, align 8
  %48 = getelementptr inbounds %struct.hash, %struct.hash* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @strdup(i8* %49)
  %51 = load %struct.hash*, %struct.hash** %7, align 8
  %52 = getelementptr inbounds %struct.hash, %struct.hash* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = icmp ne i32 %50, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %45
  %55 = call i32 @err(i32 1, i32* null)
  br label %56

56:                                               ; preds = %54, %45
  %57 = load %struct.hash*, %struct.hash** %7, align 8
  %58 = getelementptr inbounds %struct.hash, %struct.hash* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @strlen(i32 %59)
  %61 = add nsw i64 %60, 1
  %62 = load i64, i64* @mesgpt, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* @mesgpt, align 8
  %64 = load %struct.hash*, %struct.hash** %8, align 8
  %65 = getelementptr inbounds %struct.hash, %struct.hash* %64, i32 0, i32 2
  %66 = load %struct.hash*, %struct.hash** %65, align 8
  %67 = load %struct.hash*, %struct.hash** %7, align 8
  %68 = getelementptr inbounds %struct.hash, %struct.hash* %67, i32 0, i32 2
  store %struct.hash* %66, %struct.hash** %68, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.hash*, %struct.hash** %7, align 8
  %71 = getelementptr inbounds %struct.hash, %struct.hash* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.hash*, %struct.hash** %7, align 8
  %73 = load %struct.hash*, %struct.hash** %8, align 8
  %74 = getelementptr inbounds %struct.hash, %struct.hash* %73, i32 0, i32 2
  store %struct.hash* %72, %struct.hash** %74, align 8
  %75 = load %struct.hash*, %struct.hash** %7, align 8
  %76 = getelementptr inbounds %struct.hash, %struct.hash* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %3, align 8
  br label %78

78:                                               ; preds = %56, %31
  %79 = load i64, i64* %3, align 8
  ret i64 %79
}

declare dso_local i32 @lastchr(i8*) #1

declare dso_local i32 @istail(i8*, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
