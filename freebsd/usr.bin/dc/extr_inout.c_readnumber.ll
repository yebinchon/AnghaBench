; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_inout.c_readnumber.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_inout.c_readnumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.number = type { i32, i32* }
%struct.source = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.source*)*, i32 (%struct.source*)* }

@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.number* @readnumber(%struct.source* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.source*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.number*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.number*, align 8
  %14 = alloca %struct.number*, align 8
  %15 = alloca %struct.number*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.source* %0, %struct.source** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = call %struct.number* (...) @new_number()
  store %struct.number* %19, %struct.number** %7, align 8
  %20 = load %struct.number*, %struct.number** %7, align 8
  %21 = getelementptr inbounds %struct.number, %struct.number* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @BN_zero(i32* %22)
  %24 = call i32 @bn_check(i32 %23)
  br label %25

25:                                               ; preds = %81, %65, %57, %3
  %26 = load %struct.source*, %struct.source** %4, align 8
  %27 = getelementptr inbounds %struct.source, %struct.source* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.source*)*, i32 (%struct.source*)** %29, align 8
  %31 = load %struct.source*, %struct.source** %4, align 8
  %32 = call i32 %30(%struct.source* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @EOF, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %94

35:                                               ; preds = %25
  %36 = load i32, i32* %9, align 4
  %37 = icmp sle i32 48, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = icmp sle i32 %39, 57
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %42, 48
  store i32 %43, i32* %8, align 4
  br label %75

44:                                               ; preds = %38, %35
  %45 = load i32, i32* %9, align 4
  %46 = icmp sle i32 65, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = icmp sle i32 %48, 70
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %51, 65
  %53 = add nsw i32 %52, 10
  store i32 %53, i32* %8, align 4
  br label %74

54:                                               ; preds = %47, %44
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 95
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 1, i32* %12, align 4
  br label %25

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 46
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %94

65:                                               ; preds = %61
  store i32 1, i32* %11, align 4
  br label %25

66:                                               ; preds = %58
  %67 = load %struct.source*, %struct.source** %4, align 8
  %68 = getelementptr inbounds %struct.source, %struct.source* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32 (%struct.source*)*, i32 (%struct.source*)** %70, align 8
  %72 = load %struct.source*, %struct.source** %4, align 8
  %73 = call i32 %71(%struct.source* %72)
  br label %94

74:                                               ; preds = %50
  br label %75

75:                                               ; preds = %74, %41
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load %struct.number*, %struct.number** %7, align 8
  %83 = getelementptr inbounds %struct.number, %struct.number* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @BN_mul_word(i32* %84, i32 %85)
  %87 = call i32 @bn_check(i32 %86)
  %88 = load %struct.number*, %struct.number** %7, align 8
  %89 = getelementptr inbounds %struct.number, %struct.number* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @BN_add_word(i32* %90, i32 %91)
  %93 = call i32 @bn_check(i32 %92)
  br label %25

94:                                               ; preds = %66, %64, %25
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %95, 10
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.number*, %struct.number** %7, align 8
  %100 = getelementptr inbounds %struct.number, %struct.number* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %168

101:                                              ; preds = %94
  %102 = call i32* (...) @BN_CTX_new()
  store i32* %102, i32** %18, align 8
  %103 = call i32* (...) @BN_new()
  store i32* %103, i32** %16, align 8
  %104 = call i32* (...) @BN_new()
  store i32* %104, i32** %17, align 8
  %105 = call %struct.number* (...) @new_number()
  store %struct.number* %105, %struct.number** %14, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = call i32 @BN_zero(i32* %106)
  %108 = call i32 @bn_check(i32 %107)
  %109 = load i32*, i32** %17, align 8
  %110 = call i32 @BN_zero(i32* %109)
  %111 = call i32 @bn_check(i32 %110)
  %112 = load i32*, i32** %16, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @BN_add_word(i32* %112, i32 %113)
  %115 = call i32 @bn_check(i32 %114)
  %116 = load i32*, i32** %17, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @BN_add_word(i32* %116, i32 %117)
  %119 = call i32 @bn_check(i32 %118)
  %120 = load %struct.number*, %struct.number** %14, align 8
  %121 = getelementptr inbounds %struct.number, %struct.number* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32*, i32** %16, align 8
  %124 = load i32*, i32** %17, align 8
  %125 = load i32*, i32** %18, align 8
  %126 = call i32 @BN_exp(i32* %122, i32* %123, i32* %124, i32* %125)
  %127 = call i32 @bn_check(i32 %126)
  %128 = load %struct.number*, %struct.number** %14, align 8
  %129 = getelementptr inbounds %struct.number, %struct.number* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  %130 = load %struct.number*, %struct.number** %7, align 8
  %131 = load %struct.number*, %struct.number** %14, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call %struct.number* @div_number(%struct.number* %130, %struct.number* %131, i32 %132)
  store %struct.number* %133, %struct.number** %13, align 8
  %134 = load %struct.number*, %struct.number** %7, align 8
  store %struct.number* %134, %struct.number** %15, align 8
  %135 = load %struct.number*, %struct.number** %13, align 8
  store %struct.number* %135, %struct.number** %7, align 8
  br label %136

136:                                              ; preds = %149, %101
  %137 = load %struct.number*, %struct.number** %7, align 8
  %138 = getelementptr inbounds %struct.number, %struct.number* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.number*, %struct.number** %7, align 8
  %143 = getelementptr inbounds %struct.number, %struct.number* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = call i64 @BN_mod_word(i32* %144, i32 10)
  %146 = icmp eq i64 %145, 0
  br label %147

147:                                              ; preds = %141, %136
  %148 = phi i1 [ false, %136 ], [ %146, %141 ]
  br i1 %148, label %149, label %157

149:                                              ; preds = %147
  %150 = load %struct.number*, %struct.number** %7, align 8
  %151 = load %struct.number*, %struct.number** %7, align 8
  %152 = getelementptr inbounds %struct.number, %struct.number* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = call i32 @normalize(%struct.number* %150, i64 %155)
  br label %136

157:                                              ; preds = %147
  %158 = load %struct.number*, %struct.number** %15, align 8
  %159 = call i32 @free_number(%struct.number* %158)
  %160 = load %struct.number*, %struct.number** %14, align 8
  %161 = call i32 @free_number(%struct.number* %160)
  %162 = load i32*, i32** %18, align 8
  %163 = call i32 @BN_CTX_free(i32* %162)
  %164 = load i32*, i32** %16, align 8
  %165 = call i32 @BN_free(i32* %164)
  %166 = load i32*, i32** %17, align 8
  %167 = call i32 @BN_free(i32* %166)
  br label %168

168:                                              ; preds = %157, %97
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.number*, %struct.number** %7, align 8
  %173 = call i32 @negate(%struct.number* %172)
  br label %174

174:                                              ; preds = %171, %168
  %175 = load %struct.number*, %struct.number** %7, align 8
  ret %struct.number* %175
}

declare dso_local %struct.number* @new_number(...) #1

declare dso_local i32 @bn_check(i32) #1

declare dso_local i32 @BN_zero(i32*) #1

declare dso_local i32 @BN_mul_word(i32*, i32) #1

declare dso_local i32 @BN_add_word(i32*, i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_exp(i32*, i32*, i32*, i32*) #1

declare dso_local %struct.number* @div_number(%struct.number*, %struct.number*, i32) #1

declare dso_local i64 @BN_mod_word(i32*, i32) #1

declare dso_local i32 @normalize(%struct.number*, i64) #1

declare dso_local i32 @free_number(%struct.number*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @negate(%struct.number*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
