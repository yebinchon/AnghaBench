; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_FindExec.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_FindExec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { i32 }
%struct.cmdtab = type { i32, i32 (%struct.cmdargs*)*, i32 }
%struct.cmdargs = type opaque
%struct.prompt = type { i32 }
%struct.datalink = type { i32 }
%struct.cmdargs.0 = type { i32, i32, i8**, %struct.prompt*, %struct.datalink*, %struct.bundle*, %struct.cmdtab*, %struct.cmdtab* }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: Ambiguous command\0A\00", align 1
@LOCAL_CX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: No context (use the `link' command)\0A\00", align 1
@LOCAL_CX_OPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: Redundant context (%s) ignored\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: Invalid command\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"usage: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%s: Failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bundle*, %struct.cmdtab*, i32, i32, i8**, %struct.prompt*, %struct.datalink*)* @FindExec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FindExec(%struct.bundle* %0, %struct.cmdtab* %1, i32 %2, i32 %3, i8** %4, %struct.prompt* %5, %struct.datalink* %6) #0 {
  %8 = alloca %struct.bundle*, align 8
  %9 = alloca %struct.cmdtab*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca %struct.prompt*, align 8
  %14 = alloca %struct.datalink*, align 8
  %15 = alloca %struct.cmdtab*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.cmdargs.0, align 8
  %19 = alloca [100 x i8], align 16
  store %struct.bundle* %0, %struct.bundle** %8, align 8
  store %struct.cmdtab* %1, %struct.cmdtab** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store %struct.prompt* %5, %struct.prompt** %13, align 8
  store %struct.datalink* %6, %struct.datalink** %14, align 8
  store i32 1, i32* %16, align 4
  %20 = load %struct.cmdtab*, %struct.cmdtab** %9, align 8
  %21 = load i8**, i8*** %12, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call %struct.cmdtab* @FindCommand(%struct.cmdtab* %20, i8* %25, i32* %17)
  store %struct.cmdtab* %26, %struct.cmdtab** %15, align 8
  %27 = load i32, i32* %17, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %37

29:                                               ; preds = %7
  %30 = load i32, i32* @LogWARN, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i8**, i8*** %12, align 8
  %34 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %35 = call i32 @mkPrefix(i32 %32, i8** %33, i8* %34, i32 100)
  %36 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %139

37:                                               ; preds = %7
  %38 = load %struct.cmdtab*, %struct.cmdtab** %15, align 8
  %39 = icmp ne %struct.cmdtab* %38, null
  br i1 %39, label %40, label %130

40:                                               ; preds = %37
  %41 = load %struct.prompt*, %struct.prompt** %13, align 8
  %42 = icmp ne %struct.prompt* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.cmdtab*, %struct.cmdtab** %15, align 8
  %45 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.prompt*, %struct.prompt** %13, align 8
  %48 = getelementptr inbounds %struct.prompt, %struct.prompt* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %130

52:                                               ; preds = %43, %40
  %53 = load %struct.cmdtab*, %struct.cmdtab** %15, align 8
  %54 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @LOCAL_CX, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.datalink*, %struct.datalink** %14, align 8
  %61 = icmp ne %struct.datalink* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load %struct.bundle*, %struct.bundle** %8, align 8
  %64 = call %struct.datalink* @bundle2datalink(%struct.bundle* %63, i32* null)
  store %struct.datalink* %64, %struct.datalink** %14, align 8
  br label %65

65:                                               ; preds = %62, %59, %52
  %66 = load %struct.cmdtab*, %struct.cmdtab** %15, align 8
  %67 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @LOCAL_CX, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %65
  %73 = load %struct.datalink*, %struct.datalink** %14, align 8
  %74 = icmp ne %struct.datalink* %73, null
  br i1 %74, label %83, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @LogWARN, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i8**, i8*** %12, align 8
  %80 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %81 = call i32 @mkPrefix(i32 %78, i8** %79, i8* %80, i32 100)
  %82 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %76, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %129

83:                                               ; preds = %72, %65
  %84 = load %struct.datalink*, %struct.datalink** %14, align 8
  %85 = icmp ne %struct.datalink* %84, null
  br i1 %85, label %86, label %106

86:                                               ; preds = %83
  %87 = load %struct.cmdtab*, %struct.cmdtab** %15, align 8
  %88 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @LOCAL_CX, align 4
  %91 = load i32, i32* @LOCAL_CX_OPT, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %86
  %96 = load i32, i32* @LogWARN, align 4
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  %99 = load i8**, i8*** %12, align 8
  %100 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %101 = call i32 @mkPrefix(i32 %98, i8** %99, i8* %100, i32 100)
  %102 = load %struct.datalink*, %struct.datalink** %14, align 8
  %103 = getelementptr inbounds %struct.datalink, %struct.datalink* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %104)
  store %struct.datalink* null, %struct.datalink** %14, align 8
  br label %106

106:                                              ; preds = %95, %86, %83
  %107 = load %struct.cmdtab*, %struct.cmdtab** %9, align 8
  %108 = getelementptr inbounds %struct.cmdargs.0, %struct.cmdargs.0* %18, i32 0, i32 7
  store %struct.cmdtab* %107, %struct.cmdtab** %108, align 8
  %109 = load %struct.cmdtab*, %struct.cmdtab** %15, align 8
  %110 = getelementptr inbounds %struct.cmdargs.0, %struct.cmdargs.0* %18, i32 0, i32 6
  store %struct.cmdtab* %109, %struct.cmdtab** %110, align 8
  %111 = load i32, i32* %10, align 4
  %112 = getelementptr inbounds %struct.cmdargs.0, %struct.cmdargs.0* %18, i32 0, i32 0
  store i32 %111, i32* %112, align 8
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  %115 = getelementptr inbounds %struct.cmdargs.0, %struct.cmdargs.0* %18, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  %116 = load i8**, i8*** %12, align 8
  %117 = getelementptr inbounds %struct.cmdargs.0, %struct.cmdargs.0* %18, i32 0, i32 2
  store i8** %116, i8*** %117, align 8
  %118 = load %struct.bundle*, %struct.bundle** %8, align 8
  %119 = getelementptr inbounds %struct.cmdargs.0, %struct.cmdargs.0* %18, i32 0, i32 5
  store %struct.bundle* %118, %struct.bundle** %119, align 8
  %120 = load %struct.datalink*, %struct.datalink** %14, align 8
  %121 = getelementptr inbounds %struct.cmdargs.0, %struct.cmdargs.0* %18, i32 0, i32 4
  store %struct.datalink* %120, %struct.datalink** %121, align 8
  %122 = load %struct.prompt*, %struct.prompt** %13, align 8
  %123 = getelementptr inbounds %struct.cmdargs.0, %struct.cmdargs.0* %18, i32 0, i32 3
  store %struct.prompt* %122, %struct.prompt** %123, align 8
  %124 = load %struct.cmdtab*, %struct.cmdtab** %15, align 8
  %125 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %124, i32 0, i32 1
  %126 = load i32 (%struct.cmdargs*)*, i32 (%struct.cmdargs*)** %125, align 8
  %127 = bitcast %struct.cmdargs.0* %18 to %struct.cmdargs*
  %128 = call i32 %126(%struct.cmdargs* %127)
  store i32 %128, i32* %16, align 4
  br label %129

129:                                              ; preds = %106, %75
  br label %138

130:                                              ; preds = %43, %37
  %131 = load i32, i32* @LogWARN, align 4
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  %134 = load i8**, i8*** %12, align 8
  %135 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %136 = call i32 @mkPrefix(i32 %133, i8** %134, i8* %135, i32 100)
  %137 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %131, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %130, %129
  br label %139

139:                                              ; preds = %138, %29
  %140 = load i32, i32* %16, align 4
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load i32, i32* @LogWARN, align 4
  %144 = load %struct.cmdtab*, %struct.cmdtab** %15, align 8
  %145 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %143, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %146)
  br label %161

148:                                              ; preds = %139
  %149 = load i32, i32* %16, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %148
  %152 = load i32, i32* @LogWARN, align 4
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  %155 = load i8**, i8*** %12, align 8
  %156 = getelementptr inbounds [100 x i8], [100 x i8]* %19, i64 0, i64 0
  %157 = call i32 @mkPrefix(i32 %154, i8** %155, i8* %156, i32 100)
  %158 = load i32, i32* %16, align 4
  %159 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %151, %148
  br label %161

161:                                              ; preds = %160, %142
  %162 = load i32, i32* %16, align 4
  ret i32 %162
}

declare dso_local %struct.cmdtab* @FindCommand(%struct.cmdtab*, i8*, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #1

declare dso_local i32 @mkPrefix(i32, i8**, i8*, i32) #1

declare dso_local %struct.datalink* @bundle2datalink(%struct.bundle*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
