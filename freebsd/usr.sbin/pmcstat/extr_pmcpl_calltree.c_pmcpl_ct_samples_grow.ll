; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_samples_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_samples_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcpl_ct_sample = type { i32, i32* }

@pmcstat_npmcs = common dso_local global i32 0, align 4
@PMCPL_CT_GROWSIZE = common dso_local global i32 0, align 4
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ERROR: out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcpl_ct_sample*)* @pmcpl_ct_samples_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcpl_ct_samples_grow(%struct.pmcpl_ct_sample* %0) #0 {
  %2 = alloca %struct.pmcpl_ct_sample*, align 8
  %3 = alloca i32, align 4
  store %struct.pmcpl_ct_sample* %0, %struct.pmcpl_ct_sample** %2, align 8
  %4 = load i32, i32* @pmcstat_npmcs, align 4
  %5 = load %struct.pmcpl_ct_sample*, %struct.pmcpl_ct_sample** %2, align 8
  %6 = getelementptr inbounds %struct.pmcpl_ct_sample, %struct.pmcpl_ct_sample* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ule i32 %4, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %59

10:                                               ; preds = %1
  %11 = load %struct.pmcpl_ct_sample*, %struct.pmcpl_ct_sample** %2, align 8
  %12 = getelementptr inbounds %struct.pmcpl_ct_sample, %struct.pmcpl_ct_sample* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @pmcstat_npmcs, align 4
  %15 = load %struct.pmcpl_ct_sample*, %struct.pmcpl_ct_sample** %2, align 8
  %16 = getelementptr inbounds %struct.pmcpl_ct_sample, %struct.pmcpl_ct_sample* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub i32 %14, %17
  %19 = load i32, i32* @PMCPL_CT_GROWSIZE, align 4
  %20 = call i32 @max(i32 %18, i32 %19)
  %21 = add i32 %13, %20
  store i32 %21, i32* %3, align 4
  %22 = load %struct.pmcpl_ct_sample*, %struct.pmcpl_ct_sample** %2, align 8
  %23 = getelementptr inbounds %struct.pmcpl_ct_sample, %struct.pmcpl_ct_sample* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32* @reallocarray(i32* %24, i32 %25, i32 4)
  %27 = load %struct.pmcpl_ct_sample*, %struct.pmcpl_ct_sample** %2, align 8
  %28 = getelementptr inbounds %struct.pmcpl_ct_sample, %struct.pmcpl_ct_sample* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.pmcpl_ct_sample*, %struct.pmcpl_ct_sample** %2, align 8
  %30 = getelementptr inbounds %struct.pmcpl_ct_sample, %struct.pmcpl_ct_sample* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %10
  %34 = load i32, i32* @EX_SOFTWARE, align 4
  %35 = call i32 @errx(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %10
  %37 = load %struct.pmcpl_ct_sample*, %struct.pmcpl_ct_sample** %2, align 8
  %38 = getelementptr inbounds %struct.pmcpl_ct_sample, %struct.pmcpl_ct_sample* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = bitcast i32* %39 to i8*
  %41 = load %struct.pmcpl_ct_sample*, %struct.pmcpl_ct_sample** %2, align 8
  %42 = getelementptr inbounds %struct.pmcpl_ct_sample, %struct.pmcpl_ct_sample* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = zext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = getelementptr inbounds i8, i8* %40, i64 %45
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.pmcpl_ct_sample*, %struct.pmcpl_ct_sample** %2, align 8
  %49 = getelementptr inbounds %struct.pmcpl_ct_sample, %struct.pmcpl_ct_sample* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub i32 %47, %50
  %52 = zext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i32 @bzero(i8* %46, i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.pmcpl_ct_sample*, %struct.pmcpl_ct_sample** %2, align 8
  %58 = getelementptr inbounds %struct.pmcpl_ct_sample, %struct.pmcpl_ct_sample* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %36, %9
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32* @reallocarray(i32*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @bzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
