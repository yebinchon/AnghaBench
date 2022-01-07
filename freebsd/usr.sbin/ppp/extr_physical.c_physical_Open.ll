; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_Open.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* (%struct.physical*)* }
%struct.physical = type { i32, i64, %struct.TYPE_7__, %struct.TYPE_6__, i32*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i32 }

@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: Open: Modem is already open!\0A\00", align 1
@PHYS_DIRECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@NDEVICES = common dso_local global i32 0, align 4
@devices = common dso_local global %struct.TYPE_8__* null, align 8
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@PHYSICAL_NOFORCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: stdin is unidentified\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"%s: %s: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"%s: Device (%s) must begin with a '/', a '!' or contain at least one ':'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @physical_Open(%struct.physical* %0) #0 {
  %2 = alloca %struct.physical*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %2, align 8
  %8 = load %struct.physical*, %struct.physical** %2, align 8
  %9 = getelementptr inbounds %struct.physical, %struct.physical* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @LogDEBUG, align 4
  %14 = load %struct.physical*, %struct.physical** %2, align 8
  %15 = getelementptr inbounds %struct.physical, %struct.physical* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %231

19:                                               ; preds = %1
  %20 = load %struct.physical*, %struct.physical** %2, align 8
  %21 = getelementptr inbounds %struct.physical, %struct.physical* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PHYS_DIRECT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %87

25:                                               ; preds = %19
  %26 = load %struct.physical*, %struct.physical** %2, align 8
  %27 = call i32 @physical_SetDevice(%struct.physical* %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @STDIN_FILENO, align 4
  %29 = load %struct.physical*, %struct.physical** %2, align 8
  %30 = getelementptr inbounds %struct.physical, %struct.physical* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %58, %25
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @NDEVICES, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.physical*, %struct.physical** %2, align 8
  %37 = getelementptr inbounds %struct.physical, %struct.physical* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.physical*, %struct.physical** %2, align 8
  %42 = getelementptr inbounds %struct.physical, %struct.physical* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %43, 0
  br label %45

45:                                               ; preds = %40, %35, %31
  %46 = phi i1 [ false, %35 ], [ false, %31 ], [ %44, %40 ]
  br i1 %46, label %47, label %61

47:                                               ; preds = %45
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devices, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32* (%struct.physical*)*, i32* (%struct.physical*)** %52, align 8
  %54 = load %struct.physical*, %struct.physical** %2, align 8
  %55 = call i32* %53(%struct.physical* %54)
  %56 = load %struct.physical*, %struct.physical** %2, align 8
  %57 = getelementptr inbounds %struct.physical, %struct.physical* %56, i32 0, i32 4
  store i32* %55, i32** %57, align 8
  br label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %31

61:                                               ; preds = %45
  %62 = load i32, i32* @STDOUT_FILENO, align 4
  %63 = call i32 @close(i32 %62)
  %64 = load %struct.physical*, %struct.physical** %2, align 8
  %65 = getelementptr inbounds %struct.physical, %struct.physical* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %61
  %69 = load %struct.physical*, %struct.physical** %2, align 8
  %70 = getelementptr inbounds %struct.physical, %struct.physical* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.physical*, %struct.physical** %2, align 8
  %75 = load i32, i32* @PHYSICAL_NOFORCE, align 4
  %76 = call i32 @physical_SetupStack(%struct.physical* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @LogDEBUG, align 4
  %78 = load %struct.physical*, %struct.physical** %2, align 8
  %79 = getelementptr inbounds %struct.physical, %struct.physical* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %73, %68
  %84 = load %struct.physical*, %struct.physical** %2, align 8
  %85 = call i32 @physical_Found(%struct.physical* %84)
  br label %86

86:                                               ; preds = %83, %61
  br label %230

87:                                               ; preds = %19
  %88 = load %struct.physical*, %struct.physical** %2, align 8
  %89 = getelementptr inbounds %struct.physical, %struct.physical* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %221, %87
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.physical*, %struct.physical** %2, align 8
  %95 = getelementptr inbounds %struct.physical, %struct.physical* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %93, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load %struct.physical*, %struct.physical** %2, align 8
  %101 = getelementptr inbounds %struct.physical, %struct.physical* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %102, 0
  br label %104

104:                                              ; preds = %99, %92
  %105 = phi i1 [ false, %92 ], [ %103, %99 ]
  br i1 %105, label %106, label %229

106:                                              ; preds = %104
  %107 = load %struct.physical*, %struct.physical** %2, align 8
  %108 = load i8*, i8** %3, align 8
  %109 = call i32 @physical_SetDevice(%struct.physical* %107, i8* %108)
  %110 = load %struct.physical*, %struct.physical** %2, align 8
  %111 = call i64 @physical_Lock(%struct.physical* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %221

113:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  %114 = load %struct.physical*, %struct.physical** %2, align 8
  %115 = getelementptr inbounds %struct.physical, %struct.physical* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 47
  br i1 %120, label %121, label %139

121:                                              ; preds = %113
  %122 = load %struct.physical*, %struct.physical** %2, align 8
  %123 = getelementptr inbounds %struct.physical, %struct.physical* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* @O_RDWR, align 4
  %127 = load i32, i32* @O_NONBLOCK, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @ID0open(i8* %125, i32 %128)
  %130 = load %struct.physical*, %struct.physical** %2, align 8
  %131 = getelementptr inbounds %struct.physical, %struct.physical* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.physical*, %struct.physical** %2, align 8
  %133 = getelementptr inbounds %struct.physical, %struct.physical* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %121
  %137 = load i32, i32* @errno, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %136, %121
  br label %139

139:                                              ; preds = %138, %113
  %140 = load %struct.physical*, %struct.physical** %2, align 8
  %141 = getelementptr inbounds %struct.physical, %struct.physical* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %143

143:                                              ; preds = %174, %139
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @NDEVICES, align 4
  %146 = icmp ult i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load %struct.physical*, %struct.physical** %2, align 8
  %149 = getelementptr inbounds %struct.physical, %struct.physical* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = icmp eq i32* %150, null
  br label %152

152:                                              ; preds = %147, %143
  %153 = phi i1 [ false, %143 ], [ %151, %147 ]
  br i1 %153, label %154, label %177

154:                                              ; preds = %152
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** @devices, align 8
  %156 = load i32, i32* %7, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32* (%struct.physical*)*, i32* (%struct.physical*)** %159, align 8
  %161 = load %struct.physical*, %struct.physical** %2, align 8
  %162 = call i32* %160(%struct.physical* %161)
  %163 = load %struct.physical*, %struct.physical** %2, align 8
  %164 = getelementptr inbounds %struct.physical, %struct.physical* %163, i32 0, i32 4
  store i32* %162, i32** %164, align 8
  %165 = icmp eq i32* %162, null
  br i1 %165, label %166, label %173

166:                                              ; preds = %154
  %167 = load i32, i32* %5, align 4
  %168 = load %struct.physical*, %struct.physical** %2, align 8
  %169 = getelementptr inbounds %struct.physical, %struct.physical* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %167, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  br label %177

173:                                              ; preds = %166, %154
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %7, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %7, align 4
  br label %143

177:                                              ; preds = %172, %152
  %178 = load %struct.physical*, %struct.physical** %2, align 8
  %179 = getelementptr inbounds %struct.physical, %struct.physical* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %217

182:                                              ; preds = %177
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @NDEVICES, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %214

186:                                              ; preds = %182
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %186
  %190 = load i32, i32* @LogWARN, align 4
  %191 = load %struct.physical*, %struct.physical** %2, align 8
  %192 = getelementptr inbounds %struct.physical, %struct.physical* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.physical*, %struct.physical** %2, align 8
  %196 = getelementptr inbounds %struct.physical, %struct.physical* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = load i32, i32* @errno, align 4
  %200 = call i32 @strerror(i32 %199)
  %201 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %190, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %194, i8* %198, i32 %200)
  br label %213

202:                                              ; preds = %186
  %203 = load i32, i32* @LogWARN, align 4
  %204 = load %struct.physical*, %struct.physical** %2, align 8
  %205 = getelementptr inbounds %struct.physical, %struct.physical* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.physical*, %struct.physical** %2, align 8
  %209 = getelementptr inbounds %struct.physical, %struct.physical* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %203, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i32 %207, i8* %211)
  br label %213

213:                                              ; preds = %202, %189
  br label %214

214:                                              ; preds = %213, %182
  %215 = load %struct.physical*, %struct.physical** %2, align 8
  %216 = call i32 @physical_Unlock(%struct.physical* %215)
  br label %220

217:                                              ; preds = %177
  %218 = load %struct.physical*, %struct.physical** %2, align 8
  %219 = call i32 @physical_Found(%struct.physical* %218)
  br label %220

220:                                              ; preds = %217, %214
  br label %221

221:                                              ; preds = %220, %106
  %222 = load i8*, i8** %3, align 8
  %223 = call i64 @strlen(i8* %222)
  %224 = add nsw i64 %223, 1
  %225 = load i8*, i8** %3, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 %224
  store i8* %226, i8** %3, align 8
  %227 = load i32, i32* %4, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %4, align 4
  br label %92

229:                                              ; preds = %104
  br label %230

230:                                              ; preds = %229, %86
  br label %231

231:                                              ; preds = %230, %12
  %232 = load %struct.physical*, %struct.physical** %2, align 8
  %233 = getelementptr inbounds %struct.physical, %struct.physical* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  ret i32 %234
}

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #1

declare dso_local i32 @physical_SetDevice(%struct.physical*, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @physical_SetupStack(%struct.physical*, i8*, i32) #1

declare dso_local i32 @physical_Found(%struct.physical*) #1

declare dso_local i64 @physical_Lock(%struct.physical*) #1

declare dso_local i32 @ID0open(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @physical_Unlock(%struct.physical*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
