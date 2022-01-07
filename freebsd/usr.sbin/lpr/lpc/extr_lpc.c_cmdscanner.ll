; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpc/extr_lpc.c_cmdscanner.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpc/extr_lpc.c_cmdscanner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32, i32 (i64, i32*)*, i32* }

@cmdscanner.el = internal global i32* null, align 8
@cmdscanner.hist = internal global i32* null, align 8
@fromatty = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"lpc\00", align 1
@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@H_SETSIZE = common dso_local global i32 0, align 4
@EL_HIST = common dso_local global i32 0, align 4
@EL_EDITOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@EL_PROMPT = common dso_local global i32 0, align 4
@lpc_prompt = common dso_local global i32 0, align 4
@EL_SIGNAL = common dso_local global i32 0, align 4
@MAX_CMDLINE = common dso_local global i64 0, align 8
@cmdline = common dso_local global i64* null, align 8
@H_ENTER = common dso_local global i32 0, align 4
@margc = common dso_local global i64 0, align 8
@margv = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"?Ambiguous command\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"?Invalid command\0A\00", align 1
@LPC_PRIVCMD = common dso_local global i32 0, align 4
@LPR_OPER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"?Privileged command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cmdscanner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdscanner() #0 {
  %1 = alloca %struct.cmd*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 0, i32* %4, align 4
  store i8* null, i8** %5, align 8
  store i32* null, i32** @cmdscanner.el, align 8
  store i32* null, i32** @cmdscanner.hist, align 8
  br label %6

6:                                                ; preds = %154, %127, %111, %106, %98, %87, %0
  %7 = load i64, i64* @fromatty, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %63

9:                                                ; preds = %6
  %10 = load i32*, i32** @cmdscanner.el, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @stdin, align 4
  %14 = load i32, i32* @stdout, align 4
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32* @el_init(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  store i32* %16, i32** @cmdscanner.el, align 8
  %17 = call i32* (...) @history_init()
  store i32* %17, i32** @cmdscanner.hist, align 8
  %18 = load i32*, i32** @cmdscanner.hist, align 8
  %19 = load i32, i32* @H_SETSIZE, align 4
  %20 = call i32 (i32*, i32*, i32, ...) @history(i32* %18, i32* %2, i32 %19, i32 100)
  %21 = load i32*, i32** @cmdscanner.el, align 8
  %22 = load i32, i32* @EL_HIST, align 4
  %23 = load i32*, i32** @cmdscanner.hist, align 8
  %24 = call i32 (i32*, i32, ...) @el_set(i32* %21, i32 %22, i32 (i32*, i32*, i32, ...)* @history, i32* %23)
  %25 = load i32*, i32** @cmdscanner.el, align 8
  %26 = load i32, i32* @EL_EDITOR, align 4
  %27 = call i32 (i32*, i32, ...) @el_set(i32* %25, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32*, i32** @cmdscanner.el, align 8
  %29 = load i32, i32* @EL_PROMPT, align 4
  %30 = load i32, i32* @lpc_prompt, align 4
  %31 = call i32 (i32*, i32, ...) @el_set(i32* %28, i32 %29, i32 %30)
  %32 = load i32*, i32** @cmdscanner.el, align 8
  %33 = load i32, i32* @EL_SIGNAL, align 4
  %34 = call i32 (i32*, i32, ...) @el_set(i32* %32, i32 %33, i32 1)
  %35 = load i32*, i32** @cmdscanner.el, align 8
  %36 = call i32 @el_source(i32* %35, i32* null)
  %37 = call i32 @cgetset(i32* null)
  br label %38

38:                                               ; preds = %12, %9
  %39 = load i32*, i32** @cmdscanner.el, align 8
  %40 = call i8* @el_gets(i32* %39, i32* %4)
  store i8* %40, i8** %5, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %38
  %46 = call i32 @quit(i32 0, i32* null)
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i64, i64* @MAX_CMDLINE, align 8
  %49 = sub nsw i64 %48, 1
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @MIN(i64 %49, i32 %50)
  store i64 %51, i64* %3, align 8
  %52 = load i64*, i64** @cmdline, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @memcpy(i64* %52, i8* %53, i64 %54)
  %56 = load i64*, i64** @cmdline, align 8
  %57 = load i64, i64* %3, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 0, i64* %58, align 8
  %59 = load i32*, i32** @cmdscanner.hist, align 8
  %60 = load i32, i32* @H_ENTER, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 (i32*, i32*, i32, ...) @history(i32* %59, i32* %2, i32 %60, i8* %61)
  br label %83

63:                                               ; preds = %6
  %64 = load i64*, i64** @cmdline, align 8
  %65 = load i64, i64* @MAX_CMDLINE, align 8
  %66 = load i32, i32* @stdin, align 4
  %67 = call i32* @fgets(i64* %64, i64 %65, i32 %66)
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = call i32 @quit(i32 0, i32* null)
  br label %71

71:                                               ; preds = %69, %63
  %72 = load i64*, i64** @cmdline, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load i64*, i64** @cmdline, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 10
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %71
  br label %155

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %47
  %84 = call i32 (...) @makeargv()
  %85 = load i64, i64* @margc, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %6

88:                                               ; preds = %83
  %89 = load i32*, i32** @cmdscanner.el, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load i32*, i32** @cmdscanner.el, align 8
  %93 = load i64, i64* @margc, align 8
  %94 = load i32*, i32** @margv, align 8
  %95 = bitcast i32* %94 to i8**
  %96 = call i32 @el_parse(i32* %92, i64 %93, i8** %95)
  %97 = icmp ne i32 %96, -1
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %6

99:                                               ; preds = %91, %88
  %100 = load i32*, i32** @margv, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.cmd* @getcmd(i32 %102)
  store %struct.cmd* %103, %struct.cmd** %1, align 8
  %104 = load %struct.cmd*, %struct.cmd** %1, align 8
  %105 = icmp eq %struct.cmd* %104, inttoptr (i64 -1 to %struct.cmd*)
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %6

108:                                              ; preds = %99
  %109 = load %struct.cmd*, %struct.cmd** %1, align 8
  %110 = icmp eq %struct.cmd* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %6

113:                                              ; preds = %108
  %114 = load %struct.cmd*, %struct.cmd** %1, align 8
  %115 = getelementptr inbounds %struct.cmd, %struct.cmd* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @LPC_PRIVCMD, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %113
  %121 = call i64 (...) @getuid()
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i32, i32* @LPR_OPER, align 4
  %125 = call i64 @ingroup(i32 %124)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %6

129:                                              ; preds = %123, %120, %113
  %130 = load %struct.cmd*, %struct.cmd** %1, align 8
  %131 = getelementptr inbounds %struct.cmd, %struct.cmd* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %147

134:                                              ; preds = %129
  %135 = load %struct.cmd*, %struct.cmd** %1, align 8
  %136 = getelementptr inbounds %struct.cmd, %struct.cmd* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.cmd*, %struct.cmd** %1, align 8
  %139 = getelementptr inbounds %struct.cmd, %struct.cmd* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.cmd*, %struct.cmd** %1, align 8
  %142 = getelementptr inbounds %struct.cmd, %struct.cmd* %141, i32 0, i32 1
  %143 = load i32 (i64, i32*)*, i32 (i64, i32*)** %142, align 8
  %144 = load i64, i64* @margc, align 8
  %145 = load i32*, i32** @margv, align 8
  %146 = call i32 @generic(i32* %137, i32 %140, i32 (i64, i32*)* %143, i64 %144, i32* %145)
  br label %154

147:                                              ; preds = %129
  %148 = load %struct.cmd*, %struct.cmd** %1, align 8
  %149 = getelementptr inbounds %struct.cmd, %struct.cmd* %148, i32 0, i32 1
  %150 = load i32 (i64, i32*)*, i32 (i64, i32*)** %149, align 8
  %151 = load i64, i64* @margc, align 8
  %152 = load i32*, i32** @margv, align 8
  %153 = call i32 %150(i64 %151, i32* %152)
  br label %154

154:                                              ; preds = %147, %134
  br label %6

155:                                              ; preds = %81
  ret void
}

declare dso_local i32* @el_init(i8*, i32, i32, i32) #1

declare dso_local i32* @history_init(...) #1

declare dso_local i32 @history(i32*, i32*, i32, ...) #1

declare dso_local i32 @el_set(i32*, i32, ...) #1

declare dso_local i32 @el_source(i32*, i32*) #1

declare dso_local i32 @cgetset(i32*) #1

declare dso_local i8* @el_gets(i32*, i32*) #1

declare dso_local i32 @quit(i32, i32*) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

declare dso_local i32* @fgets(i64*, i64, i32) #1

declare dso_local i32 @makeargv(...) #1

declare dso_local i32 @el_parse(i32*, i64, i8**) #1

declare dso_local %struct.cmd* @getcmd(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i64 @ingroup(i32) #1

declare dso_local i32 @generic(i32*, i32, i32 (i64, i32*)*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
