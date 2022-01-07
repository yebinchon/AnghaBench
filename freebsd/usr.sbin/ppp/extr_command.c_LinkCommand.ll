; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_LinkCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_LinkCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, %struct.TYPE_4__*, i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { %struct.datalink* }
%struct.datalink = type { %struct.datalink* }

@LINE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@Commands = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"link: %s: Invalid link name\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"link: %s: Invalidated link name !\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"usage: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @LinkCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LinkCommand(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.datalink*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.datalink*, align 8
  %10 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %11 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %12 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %15 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  %18 = icmp sgt i32 %13, %17
  br i1 %18, label %19, label %181

19:                                               ; preds = %1
  %20 = load i32, i32* @LINE_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %4, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %24 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %25 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %28 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcmp(i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %87, label %35

35:                                               ; preds = %19
  %36 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %37 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %36, i32 0, i32 5
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.datalink*, %struct.datalink** %39, align 8
  store %struct.datalink* %40, %struct.datalink** %6, align 8
  br label %41

41:                                               ; preds = %85, %35
  %42 = load %struct.datalink*, %struct.datalink** %6, align 8
  %43 = icmp ne %struct.datalink* %42, null
  br i1 %43, label %44, label %86

44:                                               ; preds = %41
  %45 = load %struct.datalink*, %struct.datalink** %6, align 8
  %46 = getelementptr inbounds %struct.datalink, %struct.datalink* %45, i32 0, i32 0
  %47 = load %struct.datalink*, %struct.datalink** %46, align 8
  store %struct.datalink* %47, %struct.datalink** %9, align 8
  %48 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %49 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %48, i32 0, i32 5
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* @Commands, align 4
  %52 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %53 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %56 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  %59 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %60 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %63 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.datalink*, %struct.datalink** %6, align 8
  %66 = call i32 @FindExec(%struct.TYPE_5__* %50, i32 %51, i32 %54, i32 %58, i32* %61, i32 %64, %struct.datalink* %65)
  %67 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %68 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %67, i32 0, i32 5
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.datalink*, %struct.datalink** %70, align 8
  store %struct.datalink* %71, %struct.datalink** %6, align 8
  br label %72

72:                                               ; preds = %81, %44
  %73 = load %struct.datalink*, %struct.datalink** %6, align 8
  %74 = icmp ne %struct.datalink* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load %struct.datalink*, %struct.datalink** %6, align 8
  %77 = load %struct.datalink*, %struct.datalink** %9, align 8
  %78 = icmp eq %struct.datalink* %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %85

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.datalink*, %struct.datalink** %6, align 8
  %83 = getelementptr inbounds %struct.datalink, %struct.datalink* %82, i32 0, i32 0
  %84 = load %struct.datalink*, %struct.datalink** %83, align 8
  store %struct.datalink* %84, %struct.datalink** %6, align 8
  br label %72

85:                                               ; preds = %79, %72
  br label %41

86:                                               ; preds = %41
  br label %177

87:                                               ; preds = %19
  %88 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %89 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %92 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = sub i64 %21, 1
  %98 = trunc i64 %97 to i32
  %99 = call i32 @strncpy(i8* %23, i32 %96, i32 %98)
  %100 = sub i64 %21, 1
  %101 = getelementptr inbounds i8, i8* %23, i64 %100
  store i8 0, i8* %101, align 1
  %102 = call i8* @strtok(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %102, i8** %7, align 8
  br label %103

103:                                              ; preds = %118, %87
  %104 = load i8*, i8** %7, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %120

106:                                              ; preds = %103
  %107 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %108 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %107, i32 0, i32 5
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = call %struct.datalink* @bundle2datalink(%struct.TYPE_5__* %109, i8* %110)
  %112 = icmp ne %struct.datalink* %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @LogWARN, align 4
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @log_Printf(i32 %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %115)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %179

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %117
  %119 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %119, i8** %7, align 8
  br label %103

120:                                              ; preds = %103
  %121 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %122 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %125 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = sub i64 %21, 1
  %131 = trunc i64 %130 to i32
  %132 = call i32 @strncpy(i8* %23, i32 %129, i32 %131)
  %133 = sub i64 %21, 1
  %134 = getelementptr inbounds i8, i8* %23, i64 %133
  store i8 0, i8* %134, align 1
  %135 = call i8* @strtok(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %135, i8** %7, align 8
  br label %136

136:                                              ; preds = %174, %120
  %137 = load i8*, i8** %7, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %176

139:                                              ; preds = %136
  %140 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %141 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %140, i32 0, i32 5
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = call %struct.datalink* @bundle2datalink(%struct.TYPE_5__* %142, i8* %143)
  store %struct.datalink* %144, %struct.datalink** %6, align 8
  %145 = load %struct.datalink*, %struct.datalink** %6, align 8
  %146 = icmp ne %struct.datalink* %145, null
  br i1 %146, label %147, label %167

147:                                              ; preds = %139
  %148 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %149 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %148, i32 0, i32 5
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = load i32, i32* @Commands, align 4
  %152 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %153 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %156 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  %159 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %160 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %163 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.datalink*, %struct.datalink** %6, align 8
  %166 = call i32 @FindExec(%struct.TYPE_5__* %150, i32 %151, i32 %154, i32 %158, i32* %161, i32 %164, %struct.datalink* %165)
  br label %173

167:                                              ; preds = %139
  %168 = load i32, i32* @LogWARN, align 4
  %169 = load i8*, i8** %7, align 8
  %170 = call i32 @log_Printf(i32 %168, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %169)
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %167, %147
  br label %174

174:                                              ; preds = %173
  %175 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %175, i8** %7, align 8
  br label %136

176:                                              ; preds = %136
  br label %177

177:                                              ; preds = %176, %86
  %178 = load i32, i32* %8, align 4
  store i32 %178, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %179

179:                                              ; preds = %177, %113
  %180 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %180)
  br label %189

181:                                              ; preds = %1
  %182 = load i32, i32* @LogWARN, align 4
  %183 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %184 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %183, i32 0, i32 2
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @log_Printf(i32 %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %187)
  store i32 2, i32* %2, align 4
  br label %189

189:                                              ; preds = %181, %179
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @FindExec(%struct.TYPE_5__*, i32, i32, i32, i32*, i32, %struct.datalink*) #2

declare dso_local i32 @strncpy(i8*, i32, i32) #2

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local %struct.datalink* @bundle2datalink(%struct.TYPE_5__*, i8*) #2

declare dso_local i32 @log_Printf(i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
