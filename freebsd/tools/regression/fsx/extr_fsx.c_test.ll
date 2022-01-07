; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@maxoplen = common dso_local global i32 0, align 4
@lite = common dso_local global i64 0, align 8
@mapped_writes = common dso_local global i32 0, align 4
@mapped_reads = common dso_local global i32 0, align 4
@simulatedopcount = common dso_local global i64 0, align 8
@testcalls = common dso_local global i64 0, align 8
@closeprob = common dso_local global i32 0, align 4
@closeopen = common dso_local global i32 0, align 4
@invlprob = common dso_local global i32 0, align 4
@invl = common dso_local global i32 0, align 4
@debugstart = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%lu...\0A\00", align 1
@style = common dso_local global i64 0, align 8
@maxfilelen = common dso_local global i64 0, align 8
@randomoplen = common dso_local global i64 0, align 8
@file_size = common dso_local global i64 0, align 8
@sizechecks = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @maxoplen, align 4
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %2, align 8
  %7 = call i32 (...) @random()
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @lite, align 8
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = add nsw i32 3, %13
  %15 = load i32, i32* @mapped_writes, align 4
  %16 = add nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = urem i64 %9, %17
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %19, 2
  br i1 %20, label %21, label %25

21:                                               ; preds = %0
  %22 = load i32, i32* @mapped_reads, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i64 0, i64* %4, align 8
  br label %25

25:                                               ; preds = %24, %21, %0
  %26 = load i64, i64* @simulatedopcount, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i64, i64* @testcalls, align 8
  %30 = load i64, i64* @simulatedopcount, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (...) @writefileimage()
  br label %34

34:                                               ; preds = %32, %28, %25
  %35 = load i64, i64* @testcalls, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* @testcalls, align 8
  %37 = load i32, i32* @closeprob, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i64, i64* %3, align 8
  %41 = lshr i64 %40, 3
  %42 = load i32, i32* @closeprob, align 4
  %43 = sdiv i32 268435456, %42
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %41, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* @closeopen, align 4
  br label %47

47:                                               ; preds = %39, %34
  %48 = load i32, i32* @invlprob, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i64, i64* %3, align 8
  %52 = lshr i64 %51, 3
  %53 = load i32, i32* @invlprob, align 4
  %54 = sdiv i32 268435456, %53
  %55 = sext i32 %54 to i64
  %56 = icmp ult i64 %52, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* @invl, align 4
  br label %58

58:                                               ; preds = %50, %47
  %59 = load i64, i64* @debugstart, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i64, i64* @testcalls, align 8
  %63 = load i64, i64* @debugstart, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 1, i32* @debug, align 4
  br label %66

66:                                               ; preds = %65, %61, %58
  %67 = load i32, i32* @quiet, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* @testcalls, align 8
  %71 = load i64, i64* @simulatedopcount, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i64, i64* @testcalls, align 8
  %75 = srem i64 %74, 100000
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i64, i64* @testcalls, align 8
  %79 = call i32 @prt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %77, %73, %69, %66
  %81 = load i64, i64* @lite, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br i1 false, label %90, label %96

84:                                               ; preds = %80
  %85 = load i64, i64* %4, align 8
  %86 = icmp eq i64 %85, 3
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i64, i64* @style, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87, %83
  %91 = call i32 (...) @random()
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @maxfilelen, align 8
  %94 = urem i64 %92, %93
  %95 = call i32 @dotruncate(i64 %94)
  br label %185

96:                                               ; preds = %87, %84, %83
  %97 = load i64, i64* @randomoplen, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = call i32 (...) @random()
  %101 = load i32, i32* @maxoplen, align 4
  %102 = add nsw i32 %101, 1
  %103 = srem i32 %100, %102
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %2, align 8
  br label %105

105:                                              ; preds = %99, %96
  %106 = load i64, i64* @lite, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br i1 false, label %112, label %115

109:                                              ; preds = %105
  %110 = load i64, i64* %4, align 8
  %111 = icmp eq i64 %110, 3
  br i1 %111, label %112, label %115

112:                                              ; preds = %109, %108
  %113 = load i64, i64* %2, align 8
  %114 = call i32 @dotruncate(i64 %113)
  br label %184

115:                                              ; preds = %109, %108
  %116 = call i32 (...) @random()
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %1, align 8
  %118 = load i64, i64* %4, align 8
  %119 = icmp eq i64 %118, 1
  br i1 %119, label %128, label %120

120:                                              ; preds = %115
  %121 = load i64, i64* %4, align 8
  %122 = load i64, i64* @lite, align 8
  %123 = icmp ne i64 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 3, i32 4
  %126 = sext i32 %125 to i64
  %127 = icmp eq i64 %121, %126
  br i1 %127, label %128, label %153

128:                                              ; preds = %120, %115
  %129 = load i64, i64* @maxfilelen, align 8
  %130 = load i64, i64* %1, align 8
  %131 = urem i64 %130, %129
  store i64 %131, i64* %1, align 8
  %132 = load i64, i64* %1, align 8
  %133 = load i64, i64* %2, align 8
  %134 = add i64 %132, %133
  %135 = load i64, i64* @maxfilelen, align 8
  %136 = icmp ugt i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %128
  %138 = load i64, i64* @maxfilelen, align 8
  %139 = load i64, i64* %1, align 8
  %140 = sub i64 %138, %139
  store i64 %140, i64* %2, align 8
  br label %141

141:                                              ; preds = %137, %128
  %142 = load i64, i64* %4, align 8
  %143 = icmp ne i64 %142, 1
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i64, i64* %1, align 8
  %146 = load i64, i64* %2, align 8
  %147 = call i32 @domapwrite(i64 %145, i64 %146)
  br label %152

148:                                              ; preds = %141
  %149 = load i64, i64* %1, align 8
  %150 = load i64, i64* %2, align 8
  %151 = call i32 @dowrite(i64 %149, i64 %150)
  br label %152

152:                                              ; preds = %148, %144
  br label %183

153:                                              ; preds = %120
  %154 = load i64, i64* @file_size, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i64, i64* @file_size, align 8
  %158 = load i64, i64* %1, align 8
  %159 = urem i64 %158, %157
  store i64 %159, i64* %1, align 8
  br label %161

160:                                              ; preds = %153
  store i64 0, i64* %1, align 8
  br label %161

161:                                              ; preds = %160, %156
  %162 = load i64, i64* %1, align 8
  %163 = load i64, i64* %2, align 8
  %164 = add i64 %162, %163
  %165 = load i64, i64* @file_size, align 8
  %166 = icmp ugt i64 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %161
  %168 = load i64, i64* @file_size, align 8
  %169 = load i64, i64* %1, align 8
  %170 = sub i64 %168, %169
  store i64 %170, i64* %2, align 8
  br label %171

171:                                              ; preds = %167, %161
  %172 = load i64, i64* %4, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load i64, i64* %1, align 8
  %176 = load i64, i64* %2, align 8
  %177 = call i32 @domapread(i64 %175, i64 %176)
  br label %182

178:                                              ; preds = %171
  %179 = load i64, i64* %1, align 8
  %180 = load i64, i64* %2, align 8
  %181 = call i32 @doread(i64 %179, i64 %180)
  br label %182

182:                                              ; preds = %178, %174
  br label %183

183:                                              ; preds = %182, %152
  br label %184

184:                                              ; preds = %183, %112
  br label %185

185:                                              ; preds = %184, %90
  %186 = load i64, i64* @sizechecks, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %185
  %189 = load i64, i64* @testcalls, align 8
  %190 = load i64, i64* @simulatedopcount, align 8
  %191 = icmp sgt i64 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = call i32 (...) @check_size()
  br label %194

194:                                              ; preds = %192, %188, %185
  %195 = load i32, i32* @invl, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = call i32 (...) @doinvl()
  br label %199

199:                                              ; preds = %197, %194
  %200 = load i32, i32* @closeopen, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = call i32 (...) @docloseopen()
  br label %204

204:                                              ; preds = %202, %199
  ret void
}

declare dso_local i32 @random(...) #1

declare dso_local i32 @writefileimage(...) #1

declare dso_local i32 @prt(i8*, i64) #1

declare dso_local i32 @dotruncate(i64) #1

declare dso_local i32 @domapwrite(i64, i64) #1

declare dso_local i32 @dowrite(i64, i64) #1

declare dso_local i32 @domapread(i64, i64) #1

declare dso_local i32 @doread(i64, i64) #1

declare dso_local i32 @check_size(...) #1

declare dso_local i32 @doinvl(...) #1

declare dso_local i32 @docloseopen(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
