; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_inout.c_printnumber.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_inout.c_printnumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.number = type { i64, i32* }
%struct.stack = type { i32 }

@charcount = common dso_local global i64 0, align 8
@lastchar = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printnumber(i32* %0, %struct.number* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.number*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.number*, align 8
  %8 = alloca %struct.number*, align 8
  %9 = alloca %struct.stack, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [11 x i8], align 1
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.number*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.number* %1, %struct.number** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* @charcount, align 8
  store i32 -1, i32* @lastchar, align 4
  %20 = load %struct.number*, %struct.number** %5, align 8
  %21 = getelementptr inbounds %struct.number, %struct.number* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @BN_is_zero(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @putcharwrap(i32* %26, i8 signext 48)
  br label %28

28:                                               ; preds = %25, %3
  %29 = call %struct.number* (...) @new_number()
  store %struct.number* %29, %struct.number** %8, align 8
  %30 = call %struct.number* (...) @new_number()
  store %struct.number* %30, %struct.number** %7, align 8
  %31 = load %struct.number*, %struct.number** %5, align 8
  %32 = getelementptr inbounds %struct.number, %struct.number* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.number*, %struct.number** %7, align 8
  %35 = getelementptr inbounds %struct.number, %struct.number* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp sle i32 %36, 16
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 1, i32* %14, align 4
  br label %44

39:                                               ; preds = %28
  %40 = getelementptr inbounds [11 x i8], [11 x i8]* %11, i64 0, i64 0
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 1
  %43 = call i32 @snprintf(i8* %40, i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %39, %38
  %45 = load %struct.number*, %struct.number** %5, align 8
  %46 = load %struct.number*, %struct.number** %8, align 8
  %47 = getelementptr inbounds %struct.number, %struct.number* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.number*, %struct.number** %7, align 8
  %50 = getelementptr inbounds %struct.number, %struct.number* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @split_number(%struct.number* %45, i32* %48, i32* %51)
  store i32 0, i32* %13, align 4
  %53 = call i32 @stack_init(%struct.stack* %9)
  br label %54

54:                                               ; preds = %61, %44
  %55 = load %struct.number*, %struct.number** %8, align 8
  %56 = getelementptr inbounds %struct.number, %struct.number* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @BN_is_zero(i32* %57)
  %59 = icmp ne i64 %58, 0
  %60 = xor i1 %59, true
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load %struct.number*, %struct.number** %8, align 8
  %63 = getelementptr inbounds %struct.number, %struct.number* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @BN_div_word(i32* %64, i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i8* @get_digit(i32 %67, i32 %68, i32 %69)
  %71 = call i32 @stack_pushstring(%struct.stack* %9, i8* %70)
  %72 = load i32, i32* %13, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %54

74:                                               ; preds = %54
  %75 = load i32, i32* %13, align 4
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %12, align 8
  %77 = load %struct.number*, %struct.number** %5, align 8
  %78 = getelementptr inbounds %struct.number, %struct.number* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i64 @BN_is_negative(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @putcharwrap(i32* %83, i8 signext 45)
  br label %85

85:                                               ; preds = %82, %74
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %104, %85
  %87 = load i32, i32* %13, align 4
  %88 = zext i32 %87 to i64
  %89 = load i64, i64* %12, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %86
  %92 = call i8* @stack_popstring(%struct.stack* %9)
  store i8* %92, i8** %10, align 8
  %93 = load i32, i32* %6, align 4
  %94 = icmp sgt i32 %93, 16
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @putcharwrap(i32* %96, i8 signext 32)
  br label %98

98:                                               ; preds = %95, %91
  %99 = load i32*, i32** %4, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @printwrap(i32* %99, i8* %100)
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 @free(i8* %102)
  br label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %13, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %86

107:                                              ; preds = %86
  %108 = call i32 @stack_clear(%struct.stack* %9)
  %109 = load %struct.number*, %struct.number** %5, align 8
  %110 = getelementptr inbounds %struct.number, %struct.number* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp sgt i64 %111, 0
  br i1 %112, label %113, label %207

113:                                              ; preds = %107
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @putcharwrap(i32* %114, i8 signext 46)
  %116 = call %struct.number* (...) @new_number()
  store %struct.number* %116, %struct.number** %16, align 8
  %117 = load %struct.number*, %struct.number** %16, align 8
  %118 = getelementptr inbounds %struct.number, %struct.number* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @BN_set_word(i32* %119, i32 %120)
  %122 = call i32 @bn_check(i32 %121)
  %123 = call i32* (...) @BN_new()
  store i32* %123, i32** %17, align 8
  %124 = load i32*, i32** %17, align 8
  %125 = call i32 @bn_checkp(i32* %124)
  %126 = load i32*, i32** %17, align 8
  %127 = call i32 @BN_one(i32* %126)
  %128 = call i32 @bn_check(i32 %127)
  %129 = call i32* (...) @BN_new()
  store i32* %129, i32** %18, align 8
  %130 = load i32*, i32** %18, align 8
  %131 = call i32 @bn_checkp(i32* %130)
  %132 = load i32*, i32** %18, align 8
  %133 = call i32 @BN_one(i32* %132)
  %134 = call i32 @bn_check(i32 %133)
  %135 = load i32*, i32** %18, align 8
  %136 = load %struct.number*, %struct.number** %5, align 8
  %137 = getelementptr inbounds %struct.number, %struct.number* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @scale_number(i32* %135, i64 %138)
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %154, %113
  %141 = load i32*, i32** %17, align 8
  %142 = load i32*, i32** %18, align 8
  %143 = call i64 @BN_cmp(i32* %141, i32* %142)
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %145, label %200

145:                                              ; preds = %140
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load i32, i32* %6, align 4
  %150 = icmp sgt i32 %149, 16
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32*, i32** %4, align 8
  %153 = call i32 @putcharwrap(i32* %152, i8 signext 32)
  br label %154

154:                                              ; preds = %151, %148, %145
  store i32 1, i32* %13, align 4
  %155 = load %struct.number*, %struct.number** %7, align 8
  %156 = load %struct.number*, %struct.number** %7, align 8
  %157 = load %struct.number*, %struct.number** %16, align 8
  %158 = call i32 (...) @bmachine_scale()
  %159 = call i32 @bmul_number(%struct.number* %155, %struct.number* %156, %struct.number* %157, i32 %158)
  %160 = load %struct.number*, %struct.number** %7, align 8
  %161 = load %struct.number*, %struct.number** %8, align 8
  %162 = getelementptr inbounds %struct.number, %struct.number* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @split_number(%struct.number* %160, i32* %163, i32* null)
  %165 = load %struct.number*, %struct.number** %8, align 8
  %166 = getelementptr inbounds %struct.number, %struct.number* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @BN_get_word(i32* %167)
  store i32 %168, i32* %19, align 4
  %169 = load i32, i32* %19, align 4
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %6, align 4
  %172 = call i8* @get_digit(i32 %169, i32 %170, i32 %171)
  store i8* %172, i8** %10, align 8
  %173 = load %struct.number*, %struct.number** %8, align 8
  %174 = getelementptr inbounds %struct.number, %struct.number* %173, i32 0, i32 0
  store i64 0, i64* %174, align 8
  %175 = load %struct.number*, %struct.number** %8, align 8
  %176 = load %struct.number*, %struct.number** %7, align 8
  %177 = getelementptr inbounds %struct.number, %struct.number* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @normalize(%struct.number* %175, i64 %178)
  %180 = load %struct.number*, %struct.number** %7, align 8
  %181 = getelementptr inbounds %struct.number, %struct.number* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.number*, %struct.number** %7, align 8
  %184 = getelementptr inbounds %struct.number, %struct.number* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load %struct.number*, %struct.number** %8, align 8
  %187 = getelementptr inbounds %struct.number, %struct.number* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @BN_sub(i32* %182, i32* %185, i32* %188)
  %190 = call i32 @bn_check(i32 %189)
  %191 = load i32*, i32** %4, align 8
  %192 = load i8*, i8** %10, align 8
  %193 = call i32 @printwrap(i32* %191, i8* %192)
  %194 = load i8*, i8** %10, align 8
  %195 = call i32 @free(i8* %194)
  %196 = load i32*, i32** %17, align 8
  %197 = load i32, i32* %6, align 4
  %198 = call i32 @BN_mul_word(i32* %196, i32 %197)
  %199 = call i32 @bn_check(i32 %198)
  br label %140

200:                                              ; preds = %140
  %201 = load %struct.number*, %struct.number** %16, align 8
  %202 = call i32 @free_number(%struct.number* %201)
  %203 = load i32*, i32** %17, align 8
  %204 = call i32 @BN_free(i32* %203)
  %205 = load i32*, i32** %18, align 8
  %206 = call i32 @BN_free(i32* %205)
  br label %207

207:                                              ; preds = %200, %107
  %208 = load i32*, i32** %4, align 8
  %209 = call i32 @flushwrap(i32* %208)
  %210 = load %struct.number*, %struct.number** %8, align 8
  %211 = call i32 @free_number(%struct.number* %210)
  %212 = load %struct.number*, %struct.number** %7, align 8
  %213 = call i32 @free_number(%struct.number* %212)
  ret void
}

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @putcharwrap(i32*, i8 signext) #1

declare dso_local %struct.number* @new_number(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @split_number(%struct.number*, i32*, i32*) #1

declare dso_local i32 @stack_init(%struct.stack*) #1

declare dso_local i32 @BN_div_word(i32*, i32) #1

declare dso_local i32 @stack_pushstring(%struct.stack*, i8*) #1

declare dso_local i8* @get_digit(i32, i32, i32) #1

declare dso_local i64 @BN_is_negative(i32*) #1

declare dso_local i8* @stack_popstring(%struct.stack*) #1

declare dso_local i32 @printwrap(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @stack_clear(%struct.stack*) #1

declare dso_local i32 @bn_check(i32) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @bn_checkp(i32*) #1

declare dso_local i32 @BN_one(i32*) #1

declare dso_local i32 @scale_number(i32*, i64) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @bmul_number(%struct.number*, %struct.number*, %struct.number*, i32) #1

declare dso_local i32 @bmachine_scale(...) #1

declare dso_local i32 @BN_get_word(i32*) #1

declare dso_local i32 @normalize(%struct.number*, i64) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32*) #1

declare dso_local i32 @BN_mul_word(i32*, i32) #1

declare dso_local i32 @free_number(%struct.number*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @flushwrap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
