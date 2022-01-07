; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_print_AMD_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_identcpu.c_print_AMD_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_exthigh = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"L1 2MB data TLB: %d entries\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"L1 2MB instruction TLB: %d entries\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"L1 4KB data TLB: %d entries\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"L1 4KB instruction TLB: %d entries\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"L1 data cache: %d kbytes\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c", %d bytes/line\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c", %d lines/tag\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"L1 instruction cache: %d kbytes\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"L2 2MB data TLB: %d entries\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"L2 2MB instruction TLB: %d entries\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"L2 2MB unified TLB: %d entries\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"L2 4KB data TLB: %d entries\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"L2 4KB instruction TLB: %d entries\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"L2 4KB unified TLB: %d entries\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"L2 unified cache: %d kbytes\00", align 1
@cpu_id = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [100 x i8] c"WARNING: This architecture revision has known SMP hardware bugs which may cause random instability\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_AMD_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_AMD_info() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = load i32, i32* @cpu_exthigh, align 4
  %3 = icmp uge i32 %2, -2147483643
  br i1 %3, label %4, label %79

4:                                                ; preds = %0
  %5 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %6 = call i32 @do_cpuid(i32 -2147483643, i32* %5)
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %8 = load i32, i32* %7, align 16
  %9 = ashr i32 %8, 16
  %10 = and i32 %9, 255
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %13 = load i32, i32* %12, align 16
  %14 = ashr i32 %13, 24
  %15 = call i32 @print_AMD_assoc(i32 %14)
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %17 = load i32, i32* %16, align 16
  %18 = and i32 %17, 255
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %21 = load i32, i32* %20, align 16
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 255
  %24 = call i32 @print_AMD_assoc(i32 %23)
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 16
  %28 = and i32 %27, 255
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 24
  %33 = call i32 @print_AMD_assoc(i32 %32)
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 255
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 255
  %42 = call i32 @print_AMD_assoc(i32 %41)
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  %44 = load i32, i32* %43, align 8
  %45 = ashr i32 %44, 24
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 255
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  %52 = load i32, i32* %51, align 8
  %53 = ashr i32 %52, 8
  %54 = and i32 %53, 255
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  %57 = load i32, i32* %56, align 8
  %58 = ashr i32 %57, 16
  %59 = and i32 %58, 255
  %60 = call i32 @print_AMD_assoc(i32 %59)
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 3
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 24
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 255
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 255
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 16
  %77 = and i32 %76, 255
  %78 = call i32 @print_AMD_assoc(i32 %77)
  br label %79

79:                                               ; preds = %4, %0
  %80 = load i32, i32* @cpu_exthigh, align 4
  %81 = icmp uge i32 %80, -2147483642
  br i1 %81, label %82, label %173

82:                                               ; preds = %79
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %84 = call i32 @do_cpuid(i32 -2147483642, i32* %83)
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %86 = load i32, i32* %85, align 16
  %87 = ashr i32 %86, 16
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %82
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %91 = load i32, i32* %90, align 16
  %92 = ashr i32 %91, 16
  %93 = and i32 %92, 4095
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %93)
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %96 = load i32, i32* %95, align 16
  %97 = ashr i32 %96, 28
  %98 = call i32 @print_AMD_l2_assoc(i32 %97)
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %100 = load i32, i32* %99, align 16
  %101 = and i32 %100, 4095
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %101)
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %104 = load i32, i32* %103, align 16
  %105 = ashr i32 %104, 28
  %106 = and i32 %105, 15
  %107 = call i32 @print_AMD_l2_assoc(i32 %106)
  br label %118

108:                                              ; preds = %82
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %110 = load i32, i32* %109, align 16
  %111 = and i32 %110, 4095
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %111)
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %114 = load i32, i32* %113, align 16
  %115 = ashr i32 %114, 28
  %116 = and i32 %115, 15
  %117 = call i32 @print_AMD_l2_assoc(i32 %116)
  br label %118

118:                                              ; preds = %108, %89
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = ashr i32 %120, 16
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %118
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = ashr i32 %125, 16
  %127 = and i32 %126, 4095
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %127)
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = ashr i32 %130, 28
  %132 = call i32 @print_AMD_l2_assoc(i32 %131)
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = ashr i32 %134, 16
  %136 = and i32 %135, 4095
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %136)
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, 28
  %141 = and i32 %140, 15
  %142 = call i32 @print_AMD_l2_assoc(i32 %141)
  br label %154

143:                                              ; preds = %118
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = ashr i32 %145, 16
  %147 = and i32 %146, 4095
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %147)
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = ashr i32 %150, 28
  %152 = and i32 %151, 15
  %153 = call i32 @print_AMD_l2_assoc(i32 %152)
  br label %154

154:                                              ; preds = %143, %123
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  %156 = load i32, i32* %155, align 8
  %157 = ashr i32 %156, 16
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %157)
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, 255
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %161)
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  %164 = load i32, i32* %163, align 8
  %165 = ashr i32 %164, 8
  %166 = and i32 %165, 15
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %166)
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 2
  %169 = load i32, i32* %168, align 8
  %170 = ashr i32 %169, 12
  %171 = and i32 %170, 15
  %172 = call i32 @print_AMD_l2_assoc(i32 %171)
  br label %173

173:                                              ; preds = %154, %79
  %174 = load i32, i32* @cpu_id, align 4
  %175 = call i32 @CPUID_TO_FAMILY(i32 %174)
  %176 = icmp eq i32 %175, 15
  br i1 %176, label %177, label %187

177:                                              ; preds = %173
  %178 = load i32, i32* @cpu_id, align 4
  %179 = call i32 @CPUID_TO_MODEL(i32 %178)
  %180 = icmp sge i32 %179, 32
  br i1 %180, label %181, label %187

181:                                              ; preds = %177
  %182 = load i32, i32* @cpu_id, align 4
  %183 = call i32 @CPUID_TO_MODEL(i32 %182)
  %184 = icmp sle i32 %183, 63
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.15, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %181, %177, %173
  ret void
}

declare dso_local i32 @do_cpuid(i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_AMD_assoc(i32) #1

declare dso_local i32 @print_AMD_l2_assoc(i32) #1

declare dso_local i32 @CPUID_TO_FAMILY(i32) #1

declare dso_local i32 @CPUID_TO_MODEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
