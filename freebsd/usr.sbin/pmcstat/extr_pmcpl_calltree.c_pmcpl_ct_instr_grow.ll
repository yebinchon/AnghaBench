; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_instr_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_instr_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcpl_ct_instr = type { i32 }

@PMCPL_CT_GROWSIZE = common dso_local global i32 0, align 4
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ERROR: out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.pmcpl_ct_instr**)* @pmcpl_ct_instr_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcpl_ct_instr_grow(i32 %0, i32* %1, %struct.pmcpl_ct_instr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pmcpl_ct_instr**, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.pmcpl_ct_instr** %2, %struct.pmcpl_ct_instr*** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %54

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %17, %19
  %21 = load i32, i32* @PMCPL_CT_GROWSIZE, align 4
  %22 = call i32 @max(i32 %20, i32 %21)
  %23 = add nsw i32 %15, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.pmcpl_ct_instr**, %struct.pmcpl_ct_instr*** %6, align 8
  %25 = load %struct.pmcpl_ct_instr*, %struct.pmcpl_ct_instr** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.pmcpl_ct_instr* @reallocarray(%struct.pmcpl_ct_instr* %25, i32 %26, i32 4)
  %28 = load %struct.pmcpl_ct_instr**, %struct.pmcpl_ct_instr*** %6, align 8
  store %struct.pmcpl_ct_instr* %27, %struct.pmcpl_ct_instr** %28, align 8
  %29 = load %struct.pmcpl_ct_instr**, %struct.pmcpl_ct_instr*** %6, align 8
  %30 = load %struct.pmcpl_ct_instr*, %struct.pmcpl_ct_instr** %29, align 8
  %31 = icmp eq %struct.pmcpl_ct_instr* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %13
  %33 = load i32, i32* @EX_SOFTWARE, align 4
  %34 = call i32 @errx(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %13
  %36 = load %struct.pmcpl_ct_instr**, %struct.pmcpl_ct_instr*** %6, align 8
  %37 = load %struct.pmcpl_ct_instr*, %struct.pmcpl_ct_instr** %36, align 8
  %38 = bitcast %struct.pmcpl_ct_instr* %37 to i8*
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = sub i32 %44, %46
  %48 = zext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = call i32 @bzero(i8* %43, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %35, %12
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.pmcpl_ct_instr* @reallocarray(%struct.pmcpl_ct_instr*, i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @bzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
