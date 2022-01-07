; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_dump_regs_t2.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/cxgbtool/extr_cxgbtool.c_dump_regs_t2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"sge\00", align 1
@sge_regs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"mc3\00", align 1
@mc3_regs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"mc4\00", align 1
@mc4_regs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"tpi\00", align 1
@tpi_regs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"tp\00", align 1
@tp_regs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"rat\00", align 1
@rat_regs = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"cspi\00", align 1
@cspi_regs = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"espi\00", align 1
@espi_regs = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"ulp\00", align 1
@ulp_regs = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"pl\00", align 1
@pl_regs = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"mc5\00", align 1
@mc5_regs = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"unknown block \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i32*)* @dump_regs_t2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_regs_t2(i32 %0, i8** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %8, align 4
  %14 = add nsw i32 %13, 1
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i8**, i8*** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %11, align 8
  br label %28

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %200

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %16
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* @sge_regs, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i64 @dump_block_regs(i32 %36, i32* %37)
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %35, %31
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* @mc3_regs, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = call i64 @dump_block_regs(i32 %51, i32* %52)
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %50, %46
  %59 = load i8*, i8** %11, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %61, %58
  %66 = load i32, i32* @mc4_regs, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = call i64 @dump_block_regs(i32 %66, i32* %67)
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %65, %61
  %74 = load i8*, i8** %11, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* @tpi_regs, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = call i64 @dump_block_regs(i32 %81, i32* %82)
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %80, %76
  %89 = load i8*, i8** %11, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* @tp_regs, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = call i64 @dump_block_regs(i32 %96, i32* %97)
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %95, %91
  %104 = load i8*, i8** %11, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %106, %103
  %111 = load i32, i32* @rat_regs, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = call i64 @dump_block_regs(i32 %111, i32* %112)
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %110, %106
  %119 = load i8*, i8** %11, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i8*, i8** %11, align 8
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %121, %118
  %126 = load i32, i32* @cspi_regs, align 4
  %127 = load i32*, i32** %9, align 8
  %128 = call i64 @dump_block_regs(i32 %126, i32* %127)
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %125, %121
  %134 = load i8*, i8** %11, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i8*, i8** %11, align 8
  %138 = call i32 @strcmp(i8* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %136, %133
  %141 = load i32, i32* @espi_regs, align 4
  %142 = load i32*, i32** %9, align 8
  %143 = call i64 @dump_block_regs(i32 %141, i32* %142)
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %140, %136
  %149 = load i8*, i8** %11, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i8*, i8** %11, align 8
  %153 = call i32 @strcmp(i8* %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %151, %148
  %156 = load i32, i32* @ulp_regs, align 4
  %157 = load i32*, i32** %9, align 8
  %158 = call i64 @dump_block_regs(i32 %156, i32* %157)
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %10, align 4
  br label %163

163:                                              ; preds = %155, %151
  %164 = load i8*, i8** %11, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load i8*, i8** %11, align 8
  %168 = call i32 @strcmp(i8* %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %178, label %170

170:                                              ; preds = %166, %163
  %171 = load i32, i32* @pl_regs, align 4
  %172 = load i32*, i32** %9, align 8
  %173 = call i64 @dump_block_regs(i32 %171, i32* %172)
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %170, %166
  %179 = load i8*, i8** %11, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i8*, i8** %11, align 8
  %183 = call i32 @strcmp(i8* %182, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %193, label %185

185:                                              ; preds = %181, %178
  %186 = load i32, i32* @mc5_regs, align 4
  %187 = load i32*, i32** %9, align 8
  %188 = call i64 @dump_block_regs(i32 %186, i32* %187)
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %10, align 4
  br label %193

193:                                              ; preds = %185, %181
  %194 = load i32, i32* %10, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load i8*, i8** %11, align 8
  %198 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %197)
  br label %199

199:                                              ; preds = %196, %193
  store i32 0, i32* %5, align 4
  br label %200

200:                                              ; preds = %199, %26
  %201 = load i32, i32* %5, align 4
  ret i32 %201
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @dump_block_regs(i32, i32*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
