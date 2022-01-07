; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_ubsecstats.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_ubsecstats.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubsec_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"hw.ubsec.stats\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"kern.ubsec_stats\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"input %llu bytes %u packets\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"output %llu bytes %u packets\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"invalid %u badsession %u badflags %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"nodesc %u badalg %u nomem %u queuefull %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"dmaerr %u mcrerr %u nodmafree %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"lenmismatch %u skipmisatch %u iovmisalined %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"noirq %u unaligned %u nomap %u noload %u nomcl %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"totbatch %u maxbatch %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"maxqueue %u maxqchip %u mcr1full %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"rng %u modexp %u moexpcrt %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ubsec_stats, align 4
  %7 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 120, i64* %7, align 8
  %8 = call i64 @sysctlbyname(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.ubsec_stats* %6, i64* %7, i32* null, i32 0)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @err(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 29
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 28
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %14, i32 %16)
  %18 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 27
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 26
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %19, i32 %21)
  %23 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %24, i32 %26, i32 %28)
  %30 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %31, i32 %33, i32 %35, i32 %37)
  %39 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 9
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %40, i32 %42, i32 %44)
  %46 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 10
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 11
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 12
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %47, i32 %49, i32 %51)
  %53 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 13
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 14
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 15
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 16
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 17
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %54, i32 %56, i32 %58, i32 %60, i32 %62)
  %64 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 18
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 19
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %65, i32 %67)
  %69 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 20
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 21
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 22
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %70, i32 %72, i32 %74)
  %76 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 23
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 24
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.ubsec_stats, %struct.ubsec_stats* %6, i32 0, i32 25
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %77, i32 %79, i32 %81)
  ret i32 0
}

declare dso_local i64 @sysctlbyname(i8*, %struct.ubsec_stats*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
