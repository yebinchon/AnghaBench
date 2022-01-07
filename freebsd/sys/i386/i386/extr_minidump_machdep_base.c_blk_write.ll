; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_minidump_machdep_base.c_blk_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_minidump_machdep_base.c_blk_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dumperinfo = type { i32 }

@MAXDUMPPGS = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"size not page aligned\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cant have both va and pa!\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"address not page aligned\0A\00", align 1
@fragsz = common dso_local global i32 0, align 4
@counter = common dso_local global i64 0, align 8
@progress = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c" %lld\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@WD_LASTVAL = common dso_local global i32 0, align 4
@dump_va = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c" (CTRL-C to abort) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dumperinfo*, i8*, i64, i64)* @blk_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_write(%struct.dumperinfo* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dumperinfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dumperinfo* %0, %struct.dumperinfo** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.dumperinfo*, %struct.dumperinfo** %6, align 8
  %16 = getelementptr inbounds %struct.dumperinfo, %struct.dumperinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* @MAXDUMPPGS, align 8
  %19 = load i64, i64* @PAGE_SIZE, align 8
  %20 = mul i64 %18, %19
  %21 = call i32 @min(i32 %17, i64 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %14, align 4
  br label %27

27:                                               ; preds = %24, %4
  store i32 0, i32* %11, align 4
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = urem i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %5, align 4
  br label %181

35:                                               ; preds = %27
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %5, align 4
  br label %181

44:                                               ; preds = %38, %35
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i8*, i8** %7, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = load i64, i64* @PAGE_SIZE, align 8
  %51 = urem i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %5, align 4
  br label %181

56:                                               ; preds = %47, %44
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load %struct.dumperinfo*, %struct.dumperinfo** %6, align 8
  %61 = call i32 @blk_flush(%struct.dumperinfo* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %181

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %56
  br label %68

68:                                               ; preds = %179, %67
  %69 = load i64, i64* %9, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %180

71:                                               ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @fragsz, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i64, i64* %9, align 8
  store i64 %80, i64* %10, align 8
  br label %81

81:                                               ; preds = %79, %71
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @counter, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* @counter, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* @progress, align 8
  %87 = sub i64 %86, %85
  store i64 %87, i64* @progress, align 8
  %88 = load i64, i64* @counter, align 8
  %89 = lshr i64 %88, 24
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %81
  %92 = load i64, i64* @progress, align 8
  %93 = load i64, i64* @PAGE_SHIFT, align 8
  %94 = lshr i64 %92, %93
  %95 = call i32 @PG2MB(i64 %94)
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load i64, i64* @counter, align 8
  %98 = and i64 %97, 16777215
  store i64 %98, i64* @counter, align 8
  br label %99

99:                                               ; preds = %91, %81
  %100 = load i32, i32* @WD_LASTVAL, align 4
  %101 = call i32 @wdog_kern_pat(i32 %100)
  %102 = load i8*, i8** %7, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %120

104:                                              ; preds = %99
  %105 = load %struct.dumperinfo*, %struct.dumperinfo** %6, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @dump_append(%struct.dumperinfo* %105, i8* %106, i32 0, i64 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %5, align 4
  br label %181

113:                                              ; preds = %104
  %114 = load i64, i64* %10, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 %114
  store i8* %116, i8** %7, align 8
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* %9, align 8
  %119 = sub i64 %118, %117
  store i64 %119, i64* %9, align 8
  br label %168

120:                                              ; preds = %99
  store i32 0, i32* %12, align 4
  br label %121

121:                                              ; preds = %138, %120
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %10, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %144

126:                                              ; preds = %121
  %127 = load i64, i64* %8, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %127, %129
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @fragsz, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i64, i64* @PAGE_SHIFT, align 8
  %135 = trunc i64 %134 to i32
  %136 = ashr i32 %133, %135
  %137 = call i32 @pmap_kenter_temporary(i64 %130, i32 %136)
  store i32 %137, i32* @dump_va, align 4
  br label %138

138:                                              ; preds = %126
  %139 = load i64, i64* @PAGE_SIZE, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %12, align 4
  br label %121

144:                                              ; preds = %121
  %145 = load i64, i64* %10, align 8
  %146 = load i32, i32* @fragsz, align 4
  %147 = sext i32 %146 to i64
  %148 = add i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* @fragsz, align 4
  %150 = load i64, i64* %10, align 8
  %151 = load i64, i64* %8, align 8
  %152 = add i64 %151, %150
  store i64 %152, i64* %8, align 8
  %153 = load i64, i64* %10, align 8
  %154 = load i64, i64* %9, align 8
  %155 = sub i64 %154, %153
  store i64 %155, i64* %9, align 8
  %156 = load i32, i32* @fragsz, align 4
  %157 = load i32, i32* %14, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %144
  %160 = load %struct.dumperinfo*, %struct.dumperinfo** %6, align 8
  %161 = call i32 @blk_flush(%struct.dumperinfo* %160)
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = load i32, i32* %11, align 4
  store i32 %165, i32* %5, align 4
  br label %181

166:                                              ; preds = %159
  br label %167

167:                                              ; preds = %166, %144
  br label %168

168:                                              ; preds = %167, %113
  %169 = call i32 (...) @cncheckc()
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp eq i32 %170, 3
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load i32, i32* @ECANCELED, align 4
  store i32 %173, i32* %5, align 4
  br label %181

174:                                              ; preds = %168
  %175 = load i32, i32* %13, align 4
  %176 = icmp ne i32 %175, -1
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %174
  br label %68

180:                                              ; preds = %68
  store i32 0, i32* %5, align 4
  br label %181

181:                                              ; preds = %180, %172, %164, %111, %64, %53, %41, %32
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @blk_flush(%struct.dumperinfo*) #1

declare dso_local i32 @PG2MB(i64) #1

declare dso_local i32 @wdog_kern_pat(i32) #1

declare dso_local i32 @dump_append(%struct.dumperinfo*, i8*, i32, i64) #1

declare dso_local i32 @pmap_kenter_temporary(i64, i32) #1

declare dso_local i32 @cncheckc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
