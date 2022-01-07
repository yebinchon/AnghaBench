; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_list.c_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_list.c_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lex = type { i8, i32 }

@regretp = common dso_local global i64 0, align 8
@lexstring = common dso_local global i8* null, align 8
@string_stack = common dso_local global i32* null, align 8
@numberstack = common dso_local global i32* null, align 8
@lexnumber = common dso_local global i32 0, align 4
@regretstack = common dso_local global i32* null, align 8
@TEOL = common dso_local global i32 0, align 4
@TNUMBER = common dso_local global i32 0, align 4
@singles = common dso_local global %struct.lex* null, align 8
@STRINGLEN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Missing %c\0A\00", align 1
@TERROR = common dso_local global i32 0, align 4
@TSTRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scan(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lex*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %9 = load i64, i64* @regretp, align 8
  %10 = icmp uge i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load i8*, i8** @lexstring, align 8
  %13 = load i32*, i32** @string_stack, align 8
  %14 = load i64, i64* @regretp, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strcpy(i8* %12, i32 %16)
  %18 = load i32*, i32** @numberstack, align 8
  %19 = load i64, i64* @regretp, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* @lexnumber, align 4
  %22 = load i32*, i32** @regretstack, align 8
  %23 = load i64, i64* @regretp, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* @regretp, align 8
  %25 = getelementptr inbounds i32, i32* %22, i64 %23
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %2, align 4
  br label %189

27:                                               ; preds = %1
  %28 = load i8**, i8*** %3, align 8
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** @lexstring, align 8
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  %33 = load i8, i8* %31, align 1
  %34 = sext i8 %33 to i32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %43, %27
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 9
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i1 [ true, %35 ], [ %40, %38 ]
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %4, align 8
  %46 = load i8, i8* %44, align 1
  %47 = sext i8 %46 to i32
  store i32 %47, i32* %6, align 4
  br label %35

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 -1
  store i8* %53, i8** %4, align 8
  %54 = load i8**, i8*** %3, align 8
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* @TEOL, align 4
  store i32 %55, i32* %2, align 4
  br label %189

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = trunc i32 %57 to i8
  %59 = call i64 @isdigit(i8 zeroext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %56
  store i32 0, i32* @lexnumber, align 4
  br label %62

62:                                               ; preds = %67, %61
  %63 = load i32, i32* %6, align 4
  %64 = trunc i32 %63 to i8
  %65 = call i64 @isdigit(i8 zeroext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load i32, i32* @lexnumber, align 4
  %69 = mul nsw i32 %68, 10
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %69, %70
  %72 = sub nsw i32 %71, 48
  store i32 %72, i32* @lexnumber, align 4
  %73 = load i32, i32* %6, align 4
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %5, align 8
  store i8 %74, i8* %75, align 1
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %4, align 8
  %79 = load i8, i8* %77, align 1
  %80 = sext i8 %79 to i32
  store i32 %80, i32* %6, align 4
  br label %62

81:                                               ; preds = %62
  %82 = load i8*, i8** %5, align 8
  store i8 0, i8* %82, align 1
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 -1
  store i8* %84, i8** %4, align 8
  %85 = load i8**, i8*** %3, align 8
  store i8* %84, i8** %85, align 8
  %86 = load i32, i32* @TNUMBER, align 4
  store i32 %86, i32* %2, align 4
  br label %189

87:                                               ; preds = %56
  %88 = load %struct.lex*, %struct.lex** @singles, align 8
  %89 = getelementptr inbounds %struct.lex, %struct.lex* %88, i64 0
  store %struct.lex* %89, %struct.lex** %7, align 8
  br label %90

90:                                               ; preds = %116, %87
  %91 = load %struct.lex*, %struct.lex** %7, align 8
  %92 = getelementptr inbounds %struct.lex, %struct.lex* %91, i32 0, i32 0
  %93 = load i8, i8* %92, align 4
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %90
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.lex*, %struct.lex** %7, align 8
  %99 = getelementptr inbounds %struct.lex, %struct.lex* %98, i32 0, i32 0
  %100 = load i8, i8* %99, align 4
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %97, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %96
  %104 = load i32, i32* %6, align 4
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** @lexstring, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  store i8 %105, i8* %107, align 1
  %108 = load i8*, i8** @lexstring, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  store i8 0, i8* %109, align 1
  %110 = load i8*, i8** %4, align 8
  %111 = load i8**, i8*** %3, align 8
  store i8* %110, i8** %111, align 8
  %112 = load %struct.lex*, %struct.lex** %7, align 8
  %113 = getelementptr inbounds %struct.lex, %struct.lex* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %2, align 4
  br label %189

115:                                              ; preds = %96
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.lex*, %struct.lex** %7, align 8
  %118 = getelementptr inbounds %struct.lex, %struct.lex* %117, i32 1
  store %struct.lex* %118, %struct.lex** %7, align 8
  br label %90

119:                                              ; preds = %90
  store i32 0, i32* %8, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp eq i32 %120, 39
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %6, align 4
  %124 = icmp eq i32 %123, 34
  br i1 %124, label %125, label %131

125:                                              ; preds = %122, %119
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %8, align 4
  %127 = load i8*, i8** %4, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %4, align 8
  %129 = load i8, i8* %127, align 1
  %130 = sext i8 %129 to i32
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %125, %122
  br label %132

132:                                              ; preds = %167, %131
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %172

135:                                              ; preds = %132
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %4, align 8
  br label %172

142:                                              ; preds = %135
  %143 = load i32, i32* %8, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load i32, i32* %6, align 4
  %147 = icmp eq i32 %146, 32
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %6, align 4
  %150 = icmp eq i32 %149, 9
  br i1 %150, label %151, label %152

151:                                              ; preds = %148, %145
  br label %172

152:                                              ; preds = %148, %142
  %153 = load i8*, i8** %5, align 8
  %154 = load i8*, i8** @lexstring, align 8
  %155 = ptrtoint i8* %153 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  %158 = load i32, i32* @STRINGLEN, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = icmp slt i64 %157, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %152
  %163 = load i32, i32* %6, align 4
  %164 = trunc i32 %163 to i8
  %165 = load i8*, i8** %5, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %5, align 8
  store i8 %164, i8* %165, align 1
  br label %167

167:                                              ; preds = %162, %152
  %168 = load i8*, i8** %4, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %4, align 8
  %170 = load i8, i8* %168, align 1
  %171 = sext i8 %170 to i32
  store i32 %171, i32* %6, align 4
  br label %132

172:                                              ; preds = %151, %139, %132
  %173 = load i32, i32* %8, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %172
  %176 = load i32, i32* %6, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load i32, i32* @stderr, align 4
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @fprintf(i32 %179, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @TERROR, align 4
  store i32 %182, i32* %2, align 4
  br label %189

183:                                              ; preds = %175, %172
  %184 = load i8*, i8** %4, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 -1
  store i8* %185, i8** %4, align 8
  %186 = load i8**, i8*** %3, align 8
  store i8* %185, i8** %186, align 8
  %187 = load i8*, i8** %5, align 8
  store i8 0, i8* %187, align 1
  %188 = load i32, i32* @TSTRING, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %183, %178, %103, %81, %51, %11
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
