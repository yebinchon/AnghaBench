; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_t3_meminfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_t3_meminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"CM memory map:\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"  TCB region:      0x%08x - 0x%08x [%u]\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"  Egress contexts: 0x%08x - 0x%08x [%u]\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"  CQ contexts:     0x%08x - 0x%08x [%u]\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"  Timers:          0x%08x - 0x%08x [%u]\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"  Pstructs:        0x%08x - 0x%08x [%u]\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"  Pstruct FL:      0x%08x - 0x%08x [%u]\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"  Rx FL:           0x%08x - 0x%08x [%u]\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"  Tx FL:           0x%08x - 0x%08x [%u]\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"  uP RAM:          0x%08x - 0x%08x [%u]\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"\0APMRX memory map:\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"  iSCSI region:    0x%08x - 0x%08x [%u]\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"  TCP DDP region:  0x%08x - 0x%08x [%u]\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"  TPT region:      0x%08x - 0x%08x [%u]\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"  RQ region:       0x%08x - 0x%08x [%u]\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"  PBL region:      0x%08x - 0x%08x [%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @t3_meminfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3_meminfo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 27
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 198
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 268435455
  store i32 %31, i32* %5, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 197
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  %35 = load i32*, i32** %2, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 282
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load i32*, i32** %2, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 280
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  %41 = load i32*, i32** %2, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 281
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i32*, i32** %2, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 163
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32*, i32** %2, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 164
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  %50 = load i32*, i32** %2, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 323
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  %53 = load i32*, i32** %2, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 324
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %13, align 4
  %56 = load i32*, i32** %2, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 327
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %14, align 4
  %59 = load i32*, i32** %2, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 328
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %15, align 4
  %62 = load i32*, i32** %2, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 331
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %16, align 4
  %65 = load i32*, i32** %2, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 332
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %17, align 4
  %68 = load i32*, i32** %2, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 333
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %18, align 4
  %71 = load i32*, i32** %2, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 334
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %19, align 4
  %74 = load i32*, i32** %2, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 335
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %20, align 4
  %77 = load i32*, i32** %2, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 336
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %21, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* %3, align 4
  %82 = sub i32 %81, 1
  %83 = load i32, i32* %3, align 4
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %82, i32 %83)
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %4, align 4
  %87 = sub i32 %86, 1
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %3, align 4
  %90 = sub i32 %88, %89
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %87, i32 %90)
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %5, align 4
  %94 = sub i32 %93, 1
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %4, align 4
  %97 = sub i32 %95, %96
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %94, i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %6, align 4
  %101 = sub i32 %100, 1
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %5, align 4
  %104 = sub i32 %102, %103
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %99, i32 %101, i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = sub i32 %107, 1
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %6, align 4
  %111 = sub i32 %109, %110
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %106, i32 %108, i32 %111)
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %8, align 4
  %115 = sub i32 %114, 1
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %7, align 4
  %118 = sub i32 %116, %117
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %113, i32 %115, i32 %118)
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %9, align 4
  %122 = sub i32 %121, 1
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %8, align 4
  %125 = sub i32 %123, %124
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %120, i32 %122, i32 %125)
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %10, align 4
  %129 = sub i32 %128, 1
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %9, align 4
  %132 = sub i32 %130, %131
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %127, i32 %129, i32 %132)
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = add i32 %135, %136
  %138 = sub i32 %137, 1
  %139 = load i32, i32* %11, align 4
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %134, i32 %138, i32 %139)
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %12, align 4
  %146 = sub i32 %144, %145
  %147 = add i32 %146, 1
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %142, i32 %143, i32 %147)
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %14, align 4
  %153 = sub i32 %151, %152
  %154 = add i32 %153, 1
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 %149, i32 %150, i32 %154)
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* %16, align 4
  %160 = sub i32 %158, %159
  %161 = add i32 %160, 1
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 %156, i32 %157, i32 %161)
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* %18, align 4
  %167 = sub i32 %165, %166
  %168 = add i32 %167, 1
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i32 %163, i32 %164, i32 %168)
  %170 = load i32, i32* %20, align 4
  %171 = load i32, i32* %21, align 4
  %172 = load i32, i32* %21, align 4
  %173 = load i32, i32* %20, align 4
  %174 = sub i32 %172, %173
  %175 = add i32 %174, 1
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 %170, i32 %171, i32 %175)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
