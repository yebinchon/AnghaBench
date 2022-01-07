; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec_parser/extr_mac_veriexec_parser.c_get_fp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec_parser/extr_mac_veriexec_parser.c_get_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@fp_table = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**, i32*)* @get_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fp(i8* %0, i8** %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %143, %4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fp_table, align 8
  %18 = load i32, i32* %15, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %146

24:                                               ; preds = %16
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fp_table, align 8
  %27 = load i32, i32* %15, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i8* @strstr(i8* %25, i32* %31)
  store i8* %32, i8** %12, align 8
  br label %33

33:                                               ; preds = %36, %24
  %34 = load i8*, i8** %12, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i8*, i8** %12, align 8
  store i8* %37, i8** %13, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %12, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fp_table, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i8* @strstr(i8* %40, i32* %46)
  store i8* %47, i8** %12, align 8
  br label %33

48:                                               ; preds = %33
  %49 = load i8*, i8** %13, align 8
  store i8* %49, i8** %12, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %142

52:                                               ; preds = %48
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = icmp eq i8* %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %12, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 -1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 32
  br i1 %61, label %62, label %64

62:                                               ; preds = %56, %52
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %5, align 4
  br label %164

64:                                               ; preds = %56
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fp_table, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i64 @strlen(i32* %70)
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fp_table, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 2, %77
  %79 = sext i32 %78 to i64
  %80 = add i64 %71, %79
  store i64 %80, i64* %14, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load i64, i64* %14, align 8
  %83 = call i64 @strnlen(i8* %81, i64 %82)
  %84 = load i64, i64* %14, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %64
  %87 = load i32, i32* @EINVAL, align 4
  store i32 %87, i32* %5, align 4
  br label %164

88:                                               ; preds = %64
  %89 = load i8*, i8** %12, align 8
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fp_table, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = call i64 @strlen(i32* %95)
  %97 = getelementptr inbounds i8, i8* %89, i64 %96
  store i8* %97, i8** %11, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fp_table, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 2, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %98, i64 %106
  store i8* %107, i8** %10, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 10
  br i1 %111, label %112, label %124

112:                                              ; preds = %88
  %113 = load i8*, i8** %10, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load i8*, i8** %10, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 32
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i32, i32* @EINVAL, align 4
  store i32 %123, i32* %5, align 4
  br label %164

124:                                              ; preds = %117, %112, %88
  %125 = load i8*, i8** %10, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 32
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load i32*, i32** %9, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 @get_flags(i8* %133)
  %135 = load i32*, i32** %9, align 8
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %132, %129, %124
  %137 = load i8*, i8** %11, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 -1
  store i8 0, i8* %138, align 1
  %139 = load i8*, i8** %10, align 8
  store i8 0, i8* %139, align 1
  %140 = load i8*, i8** %12, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 -1
  store i8 0, i8* %141, align 1
  br label %146

142:                                              ; preds = %48
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %15, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %15, align 4
  br label %16

146:                                              ; preds = %136, %16
  %147 = load i8*, i8** %12, align 8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i32, i32* @EINVAL, align 4
  store i32 %150, i32* %5, align 4
  br label %164

151:                                              ; preds = %146
  %152 = load i8**, i8*** %7, align 8
  %153 = icmp ne i8** %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i8*, i8** %12, align 8
  %156 = load i8**, i8*** %7, align 8
  store i8* %155, i8** %156, align 8
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i8**, i8*** %8, align 8
  %159 = icmp ne i8** %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i8*, i8** %11, align 8
  %162 = load i8**, i8*** %8, align 8
  store i8* %161, i8** %162, align 8
  br label %163

163:                                              ; preds = %160, %157
  store i32 0, i32* %5, align 4
  br label %164

164:                                              ; preds = %163, %149, %122, %86, %62
  %165 = load i32, i32* %5, align 4
  ret i32 %165
}

declare dso_local i8* @strstr(i8*, i32*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i64 @strnlen(i8*, i64) #1

declare dso_local i32 @get_flags(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
