; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_LoadCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_LoadCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i8**, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@CONFFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"default: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @LoadCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadCommand(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %7 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %8 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %7, i32 0, i32 3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %14 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %17 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %120

20:                                               ; preds = %1
  %21 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %22 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %56, %20
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %27 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %24
  %31 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %32 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %31, i32 0, i32 2
  %33 = load i8**, i8*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %39 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i8* @system_IsValid(i8* %37, i32 %40, i32 %41)
  store i8* %42, i8** %4, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %30
  %45 = load i32, i32* @LogWARN, align 4
  %46 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %47 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %52, i8* %53)
  store i32 1, i32* %2, align 4
  br label %153

55:                                               ; preds = %30
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %24

59:                                               ; preds = %24
  %60 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %61 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %102, %59
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %66 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %105

69:                                               ; preds = %63
  %70 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %71 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %70, i32 0, i32 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %74 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %73, i32 0, i32 2
  %75 = load i8**, i8*** %74, align 8
  %76 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %77 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %75, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @bundle_SetLabel(%struct.TYPE_5__* %72, i8* %82)
  %84 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %85 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %84, i32 0, i32 3
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %88 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %87, i32 0, i32 2
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* @CONFFILE, align 4
  %95 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %96 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %99 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @system_Select(%struct.TYPE_5__* %86, i8* %93, i32 %94, i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %69
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %63

105:                                              ; preds = %63
  %106 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %107 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %106, i32 0, i32 3
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %110 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %109, i32 0, i32 2
  %111 = load i8**, i8*** %110, align 8
  %112 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %113 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %111, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @bundle_SetLabel(%struct.TYPE_5__* %108, i8* %118)
  br label %152

120:                                              ; preds = %1
  %121 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %122 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i8* @system_IsValid(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %123, i32 %124)
  store i8* %125, i8** %4, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load i32, i32* @LogWARN, align 4
  %129 = load i8*, i8** %4, align 8
  %130 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %129)
  store i32 1, i32* %2, align 4
  br label %153

131:                                              ; preds = %120
  %132 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %133 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %132, i32 0, i32 3
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = call i32 @bundle_SetLabel(%struct.TYPE_5__* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %136 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %137 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %136, i32 0, i32 3
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = load i32, i32* @CONFFILE, align 4
  %140 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %141 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %144 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @system_Select(%struct.TYPE_5__* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %142, i32 %145)
  %147 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %148 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %147, i32 0, i32 3
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = call i32 @bundle_SetLabel(%struct.TYPE_5__* %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %151

151:                                              ; preds = %131
  br label %152

152:                                              ; preds = %151, %105
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %152, %127, %44
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i8* @system_IsValid(i8*, i32, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @bundle_SetLabel(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @system_Select(%struct.TYPE_5__*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
