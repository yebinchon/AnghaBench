; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_machdep.c_xlp_mem_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_machdep.c_xlp_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_end = common dso_local global i32 0, align 4
@xlp_mem_excl = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Memory (from DRAM BARs):\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"  BAR %d: %#jx - %#jx : \00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"\09skipped - malformed %#jx -> %#jx\0A\00", align 1
@XLP_MEM_LIM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c" skipped - outside usable limit %#jx.\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c" truncated to %#jx.\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" usable\0A\00", align 1
@phys_avail = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"\09Mem[%d]: %#jx - %#jx\0A\00", align 1
@dump_avail = common dso_local global i8** null, align 8
@physmem = common dso_local global i32 0, align 4
@realmem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xlp_mem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_mem_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = call i64 @MIPS_KSEG0_TO_PHYS(i32* @_end)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i8* @round_page(i8* %13)
  %15 = getelementptr i8, i8* %14, i64 131072
  store i8* %15, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = load i8**, i8*** @xlp_mem_excl, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  store i8* %16, i8** %18, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @nlm_get_bridge_regbase(i32 0)
  store i32 %20, i32* %3, align 4
  store i8* null, i8** %1, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %131, %0
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %134

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @BRIDGE_DRAM_BAR(i32 %26)
  %28 = call i32 @nlm_read_bridge_reg(i32 %25, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 12
  %31 = and i32 %30, 1048575
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 %32, 20
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @BRIDGE_DRAM_LIMIT(i32 %35)
  %37 = call i32 @nlm_read_bridge_reg(i32 %34, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, 12
  %40 = and i32 %39, 1048575
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %24
  br label %131

44:                                               ; preds = %24
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = shl i32 %46, 20
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %57)
  br label %131

59:                                               ; preds = %44
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @XLP_MEM_LIM, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @XLP_MEM_LIM, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %131

66:                                               ; preds = %59
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @XLP_MEM_LIM, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* @XLP_MEM_LIM, align 4
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @XLP_MEM_LIM, align 4
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  br label %76

74:                                               ; preds = %66
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %70
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77
  %79 = load i8**, i8*** @phys_avail, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @mem_exclude_add(i8** %82, i32 %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %126, %78
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %89, %90
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %129

93:                                               ; preds = %87
  %94 = load i8**, i8*** @phys_avail, align 8
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %94, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = load i8**, i8*** @phys_avail, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = ptrtoint i8* %99 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = load i8*, i8** %1, align 8
  %109 = getelementptr i8, i8* %108, i64 %107
  store i8* %109, i8** %1, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sdiv i32 %110, 2
  %112 = load i8**, i8*** @phys_avail, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = ptrtoint i8* %116 to i32
  %118 = load i8**, i8*** @phys_avail, align 8
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %118, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = ptrtoint i8* %123 to i32
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %111, i32 %117, i32 %124)
  br label %126

126:                                              ; preds = %93
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 2
  store i32 %128, i32* %9, align 4
  br label %87

129:                                              ; preds = %87
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %129, %63, %55, %43
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  br label %21

134:                                              ; preds = %21
  %135 = load i8**, i8*** @phys_avail, align 8
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %135, i64 %138
  store i8* null, i8** %139, align 8
  %140 = load i8**, i8*** @phys_avail, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  store i8* null, i8** %143, align 8
  store i32 0, i32* %7, align 4
  br label %144

144:                                              ; preds = %159, %134
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  %148 = icmp sle i32 %145, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %144
  %150 = load i8**, i8*** @phys_avail, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = load i8**, i8*** @dump_avail, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  store i8* %154, i8** %158, align 8
  br label %159

159:                                              ; preds = %149
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %7, align 4
  br label %144

162:                                              ; preds = %144
  %163 = load i8*, i8** %1, align 8
  %164 = call i32 @btoc(i8* %163)
  store i32 %164, i32* @physmem, align 4
  store i32 %164, i32* @realmem, align 4
  ret void
}

declare dso_local i64 @MIPS_KSEG0_TO_PHYS(i32*) #1

declare dso_local i8* @round_page(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @nlm_get_bridge_regbase(i32) #1

declare dso_local i32 @nlm_read_bridge_reg(i32, i32) #1

declare dso_local i32 @BRIDGE_DRAM_BAR(i32) #1

declare dso_local i32 @BRIDGE_DRAM_LIMIT(i32) #1

declare dso_local i32 @mem_exclude_add(i8**, i32, i32) #1

declare dso_local i32 @btoc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
