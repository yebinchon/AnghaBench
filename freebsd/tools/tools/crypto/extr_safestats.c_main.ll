; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_safestats.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_safestats.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safe_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"hw.safe.stats\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"input %llu bytes %u packets\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"output %llu bytes %u packets\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"invalid %u badsession %u badflags %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"nodesc %u badalg %u ringfull %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"peoperr %u dmaerr %u bypasstoobig %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"skipmismatch %u lenmismatch %u coffmisaligned %u cofftoobig %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"iovmisaligned %u iovnotuniform %u noicvcopy %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"unaligned %u notuniform %u nomap %u noload %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"nomcl %u mbuf %u maxqchip %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"rng %u rngalarm %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.safe_stats, align 4
  %7 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 116, i64* %7, align 8
  %8 = call i64 @sysctlbyname(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.safe_stats* %6, i64* %7, i32* null, i32 0)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %16)
  %18 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 %21)
  %23 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %26, i32 %28)
  %30 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 9
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %31, i32 %33, i32 %35)
  %37 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 11
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 12
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %38, i32 %40, i32 %42)
  %44 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 13
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 14
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 15
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 16
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i32 %45, i32 %47, i32 %49, i32 %51)
  %53 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 17
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 18
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 19
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %54, i32 %56, i32 %58)
  %60 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 20
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 21
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 22
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 23
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %61, i32 %63, i32 %65, i32 %67)
  %69 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 24
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 25
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 26
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %70, i32 %72, i32 %74)
  %76 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 27
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.safe_stats, %struct.safe_stats* %6, i32 0, i32 28
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %77, i32 %79)
  ret i32 0
}

declare dso_local i64 @sysctlbyname(i8*, %struct.safe_stats*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
