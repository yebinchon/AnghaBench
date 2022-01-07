; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_machdep_ppc4xx.c_tlb_dump_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_machdep_ppc4xx.c_tlb_dump_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLB_SIZE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"  1k\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"  4k\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" 16k\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"256k\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"  1M\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" 16M\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"256M\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"  1G\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"????\00", align 1
@.str.9 = private unnamed_addr constant [94 x i8] c"TLB[%02u]: 0x%08X => 0x%01X_%08X %s %c %c %s %s %s %s %s %c%c%c%c%c%c%c%c%c%c%c%c%c%c%c (%u)\0A\00", align 1
@TLB_TS = common dso_local global i32 0, align 4
@TLB_VALID = common dso_local global i32 0, align 4
@TLB_WL1 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"WL1\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"___\00", align 1
@TLB_IL1I = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"IL1I\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"____\00", align 1
@TLB_IL1D = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"IL1D\00", align 1
@TLB_IL2I = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"IL2I\00", align 1
@TLB_IL2D = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"IL2D\00", align 1
@TLB_U0 = common dso_local global i32 0, align 4
@TLB_U1 = common dso_local global i32 0, align 4
@TLB_U2 = common dso_local global i32 0, align 4
@TLB_U3 = common dso_local global i32 0, align 4
@TLB_W = common dso_local global i32 0, align 4
@TLB_I = common dso_local global i32 0, align 4
@TLB_M = common dso_local global i32 0, align 4
@TLB_G = common dso_local global i32 0, align 4
@TLB_E = common dso_local global i32 0, align 4
@TLB_UX = common dso_local global i32 0, align 4
@TLB_UW = common dso_local global i32 0, align 4
@TLB_UR = common dso_local global i32 0, align 4
@TLB_SX = common dso_local global i32 0, align 4
@TLB_SW = common dso_local global i32 0, align 4
@TLB_SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tlb_dump_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlb_dump_entry(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @tlb_read(i32 %10, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8)
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @TLB_SIZE_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %23 [
    i32 132, label %15
    i32 128, label %16
    i32 135, label %17
    i32 130, label %18
    i32 131, label %19
    i32 134, label %20
    i32 129, label %21
    i32 133, label %22
  ]

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %24

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %24

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %24

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %24

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %24

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %24

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %24

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %24

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %24

24:                                               ; preds = %23, %22, %21, %20, %19, %18, %17, %16, %15
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @TLB_TS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 49, i32 48
  %36 = trunc i32 %35 to i8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @TLB_VALID, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 86, i32 46
  %43 = trunc i32 %42 to i8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @TLB_WL1, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @TLB_IL1I, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @TLB_IL1D, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @TLB_IL2I, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @TLB_IL2D, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @TLB_U0, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 49, i32 46
  %80 = trunc i32 %79 to i8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @TLB_U1, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 50, i32 46
  %87 = trunc i32 %86 to i8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @TLB_U2, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 51, i32 46
  %94 = trunc i32 %93 to i8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @TLB_U3, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 52, i32 46
  %101 = trunc i32 %100 to i8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @TLB_W, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 87, i32 46
  %108 = trunc i32 %107 to i8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @TLB_I, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 73, i32 46
  %115 = trunc i32 %114 to i8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @TLB_M, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 77, i32 46
  %122 = trunc i32 %121 to i8
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @TLB_G, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 71, i32 46
  %129 = trunc i32 %128 to i8
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @TLB_E, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 69, i32 46
  %136 = trunc i32 %135 to i8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @TLB_UX, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 120, i32 46
  %143 = trunc i32 %142 to i8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @TLB_UW, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 119, i32 46
  %150 = trunc i32 %149 to i8
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @TLB_UR, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 114, i32 46
  %157 = trunc i32 %156 to i8
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @TLB_SX, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 88, i32 46
  %164 = trunc i32 %163 to i8
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @TLB_SW, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 87, i32 46
  %171 = trunc i32 %170 to i8
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @TLB_SR, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 82, i32 46
  %178 = trunc i32 %177 to i8
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @printf(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.9, i64 0, i64 0), i32 %25, i32 %26, i32 %27, i32 %28, i8* %29, i8 signext %36, i8 signext %43, i8* %49, i8* %55, i8* %61, i8* %67, i8* %73, i8 signext %80, i8 signext %87, i8 signext %94, i8 signext %101, i8 signext %108, i8 signext %115, i8 signext %122, i8 signext %129, i8 signext %136, i8 signext %143, i8 signext %150, i8 signext %157, i8 signext %164, i8 signext %171, i8 signext %178, i32 %179)
  ret void
}

declare dso_local i32 @tlb_read(i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i8*, i8 signext, i8 signext, i8*, i8*, i8*, i8*, i8*, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
