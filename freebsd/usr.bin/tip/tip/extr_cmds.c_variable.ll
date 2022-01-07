; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_cmds.c_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_cmds.c_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"[set] \00", align 1
@vtable = common dso_local global %struct.TYPE_2__* null, align 8
@BEAUTIFY = common dso_local global i64 0, align 8
@CHANGED = common dso_local global i32 0, align 4
@tipout_pid = common dso_local global i32 0, align 4
@SIGSYS = common dso_local global i32 0, align 4
@SCRIPT = common dso_local global i64 0, align 8
@RECORD = common dso_local global i64 0, align 8
@TAND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@LECHO = common dso_local global i64 0, align 8
@HD = common dso_local global i64 0, align 8
@PARITY = common dso_local global i64 0, align 8
@NOSTR = common dso_local global i32 0, align 4
@HARDWAREFLOW = common dso_local global i64 0, align 8
@LINEDISC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @variable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [256 x i8], align 16
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %5 = call i64 @prompt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %4, i32 256)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %208

8:                                                ; preds = %1
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %10 = call i32 @vlex(i8* %9)
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtable, align 8
  %12 = load i64, i64* @BEAUTIFY, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CHANGED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %8
  %20 = load i32, i32* @CHANGED, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtable, align 8
  %23 = load i64, i64* @BEAUTIFY, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %21
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @tipout_pid, align 4
  %29 = load i32, i32* @SIGSYS, align 4
  %30 = call i32 @kill(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %19, %8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtable, align 8
  %33 = load i64, i64* @SCRIPT, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CHANGED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %31
  %41 = load i32, i32* @CHANGED, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtable, align 8
  %44 = load i64, i64* @SCRIPT, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %42
  store i32 %48, i32* %46, align 4
  %49 = call i32 (...) @setscript()
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtable, align 8
  %51 = load i64, i64* @RECORD, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CHANGED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %40
  %59 = load i32, i32* @CHANGED, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtable, align 8
  %62 = load i64, i64* @RECORD, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %60
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %58, %40
  br label %68

68:                                               ; preds = %67, %31
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtable, align 8
  %70 = load i64, i64* @RECORD, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CHANGED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %68
  %78 = load i32, i32* @CHANGED, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtable, align 8
  %81 = load i64, i64* @RECORD, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %79
  store i32 %85, i32* %83, align 4
  %86 = load i64, i64* @SCRIPT, align 8
  %87 = call i32 @value(i64 %86)
  %88 = call i64 @boolean(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = call i32 (...) @setscript()
  br label %92

92:                                               ; preds = %90, %77
  br label %93

93:                                               ; preds = %92, %68
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtable, align 8
  %95 = load i64, i64* @TAND, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @CHANGED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %93
  %103 = load i32, i32* @CHANGED, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtable, align 8
  %106 = load i64, i64* @TAND, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, %104
  store i32 %110, i32* %108, align 4
  %111 = load i64, i64* @TAND, align 8
  %112 = call i32 @value(i64 %111)
  %113 = call i64 @boolean(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %102
  %116 = call i32 @tandem(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %119

117:                                              ; preds = %102
  %118 = call i32 @tandem(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %115
  br label %120

120:                                              ; preds = %119, %93
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtable, align 8
  %122 = load i64, i64* @LECHO, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @CHANGED, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %120
  %130 = load i32, i32* @CHANGED, align 4
  %131 = xor i32 %130, -1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtable, align 8
  %133 = load i64, i64* @LECHO, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, %131
  store i32 %137, i32* %135, align 4
  %138 = load i64, i64* @LECHO, align 8
  %139 = call i32 @value(i64 %138)
  %140 = call i64 @boolean(i32 %139)
  store i64 %140, i64* @HD, align 8
  br label %141

141:                                              ; preds = %129, %120
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtable, align 8
  %143 = load i64, i64* @PARITY, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @CHANGED, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %141
  %151 = load i32, i32* @CHANGED, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtable, align 8
  %154 = load i64, i64* @PARITY, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, %152
  store i32 %158, i32* %156, align 4
  %159 = load i32, i32* @NOSTR, align 4
  %160 = call i32 @setparity(i32 %159)
  br label %161

161:                                              ; preds = %150, %141
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtable, align 8
  %163 = load i64, i64* @HARDWAREFLOW, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @CHANGED, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %188

170:                                              ; preds = %161
  %171 = load i32, i32* @CHANGED, align 4
  %172 = xor i32 %171, -1
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtable, align 8
  %174 = load i64, i64* @HARDWAREFLOW, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, %172
  store i32 %178, i32* %176, align 4
  %179 = load i64, i64* @HARDWAREFLOW, align 8
  %180 = call i32 @value(i64 %179)
  %181 = call i64 @boolean(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %170
  %184 = call i32 @hardwareflow(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %187

185:                                              ; preds = %170
  %186 = call i32 @hardwareflow(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %183
  br label %188

188:                                              ; preds = %187, %161
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtable, align 8
  %190 = load i64, i64* @LINEDISC, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @CHANGED, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %188
  %198 = load i32, i32* @CHANGED, align 4
  %199 = xor i32 %198, -1
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vtable, align 8
  %201 = load i64, i64* @LINEDISC, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = and i32 %204, %199
  store i32 %205, i32* %203, align 4
  %206 = load i32, i32* @NOSTR, align 4
  %207 = call i32 @linedisc(i32 %206)
  br label %208

208:                                              ; preds = %7, %197, %188
  ret void
}

declare dso_local i64 @prompt(i8*, i8*, i32) #1

declare dso_local i32 @vlex(i8*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @setscript(...) #1

declare dso_local i64 @boolean(i32) #1

declare dso_local i32 @value(i64) #1

declare dso_local i32 @tandem(i8*) #1

declare dso_local i32 @setparity(i32) #1

declare dso_local i32 @hardwareflow(i8*) #1

declare dso_local i32 @linedisc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
