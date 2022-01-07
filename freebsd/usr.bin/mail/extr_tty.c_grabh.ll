; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_tty.c_grabh.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_tty.c_grabh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.header = type { i32*, i32*, i32*, i32* }
%struct.termios = type { i32, i8** }

@SIGTSTP = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@SIGTTIN = common dso_local global i32 0, align 4
@ttyset = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"tcgetattr(stdin)\00", align 1
@VERASE = common dso_local global i64 0, align 8
@c_erase = common dso_local global i8* null, align 8
@VKILL = common dso_local global i64 0, align 8
@c_kill = common dso_local global i8* null, align 8
@_POSIX_VDISABLE = common dso_local global i8* null, align 8
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@GTO = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"To: \00", align 1
@GSUBJECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Subject: \00", align 1
@GCC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"Cc: \00", align 1
@GBCC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"Bcc: \00", align 1
@EXTPROC = common dso_local global i32 0, align 4
@TIOCEXT = common dso_local global i32 0, align 4
@intjmp = common dso_local global i32 0, align 4
@ttyint = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @grabh(%struct.header* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.termios, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.header* %0, %struct.header** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @SIGTSTP, align 4
  %14 = load i32, i32* @SIG_DFL, align 4
  %15 = call i32 @signal(i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @SIGTTOU, align 4
  %17 = load i32, i32* @SIG_DFL, align 4
  %18 = call i32 @signal(i32 %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @SIGTTIN, align 4
  %20 = load i32, i32* @SIG_DFL, align 4
  %21 = call i32 @signal(i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* @ttyset, align 8
  %22 = load i32, i32* @stdin, align 4
  %23 = call i32 @fileno(i32 %22)
  %24 = call i64 @tcgetattr(i32 %23, %struct.termios* %6)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %224

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = load i64, i64* @VERASE, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** @c_erase, align 8
  %34 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 1
  %35 = load i8**, i8*** %34, align 8
  %36 = load i64, i64* @VKILL, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** @c_kill, align 8
  %39 = load i8*, i8** @_POSIX_VDISABLE, align 8
  %40 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = load i64, i64* @VERASE, align 8
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  store i8* %39, i8** %43, align 8
  %44 = load i8*, i8** @_POSIX_VDISABLE, align 8
  %45 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 1
  %46 = load i8**, i8*** %45, align 8
  %47 = load i64, i64* @VKILL, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  store i8* %44, i8** %48, align 8
  %49 = load i32, i32* @SIGINT, align 4
  %50 = load i32, i32* @SIG_IGN, align 4
  %51 = call i32 @signal(i32 %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @SIG_DFL, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %28
  %55 = load i32, i32* @SIGINT, align 4
  %56 = load i32, i32* @SIG_DFL, align 4
  %57 = call i32 @signal(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %28
  %59 = load i32, i32* @SIGQUIT, align 4
  %60 = load i32, i32* @SIG_IGN, align 4
  %61 = call i32 @signal(i32 %59, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* @SIG_DFL, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @SIGQUIT, align 4
  %66 = load i32, i32* @SIG_DFL, align 4
  %67 = call i32 @signal(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %58
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @GTO, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %68
  %74 = load i64, i64* @ttyset, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %73
  %77 = load %struct.header*, %struct.header** %4, align 8
  %78 = getelementptr inbounds %struct.header, %struct.header* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load i64, i64* @ttyset, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* @ttyset, align 8
  %84 = load i32, i32* @stdin, align 4
  %85 = call i32 @fileno(i32 %84)
  %86 = load i32, i32* @TCSADRAIN, align 4
  %87 = call i32 @tcsetattr(i32 %85, i32 %86, %struct.termios* %6)
  br label %88

88:                                               ; preds = %81, %76, %73
  %89 = load %struct.header*, %struct.header** %4, align 8
  %90 = getelementptr inbounds %struct.header, %struct.header* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = call i32* @detract(i32* %91, i32 0)
  %93 = call i32* @readtty(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %92)
  %94 = load i32, i32* @GTO, align 4
  %95 = call i8* @extract(i32* %93, i32 %94)
  %96 = bitcast i8* %95 to i32*
  %97 = load %struct.header*, %struct.header** %4, align 8
  %98 = getelementptr inbounds %struct.header, %struct.header* %97, i32 0, i32 3
  store i32* %96, i32** %98, align 8
  br label %99

99:                                               ; preds = %88, %68
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @GSUBJECT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %126

104:                                              ; preds = %99
  %105 = load i64, i64* @ttyset, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %104
  %108 = load %struct.header*, %struct.header** %4, align 8
  %109 = getelementptr inbounds %struct.header, %struct.header* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load i64, i64* @ttyset, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* @ttyset, align 8
  %115 = load i32, i32* @stdin, align 4
  %116 = call i32 @fileno(i32 %115)
  %117 = load i32, i32* @TCSADRAIN, align 4
  %118 = call i32 @tcsetattr(i32 %116, i32 %117, %struct.termios* %6)
  br label %119

119:                                              ; preds = %112, %107, %104
  %120 = load %struct.header*, %struct.header** %4, align 8
  %121 = getelementptr inbounds %struct.header, %struct.header* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = call i32* @readtty(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %122)
  %124 = load %struct.header*, %struct.header** %4, align 8
  %125 = getelementptr inbounds %struct.header, %struct.header* %124, i32 0, i32 2
  store i32* %123, i32** %125, align 8
  br label %126

126:                                              ; preds = %119, %99
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @GCC, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %157

131:                                              ; preds = %126
  %132 = load i64, i64* @ttyset, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %131
  %135 = load %struct.header*, %struct.header** %4, align 8
  %136 = getelementptr inbounds %struct.header, %struct.header* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load i64, i64* @ttyset, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* @ttyset, align 8
  %142 = load i32, i32* @stdin, align 4
  %143 = call i32 @fileno(i32 %142)
  %144 = load i32, i32* @TCSADRAIN, align 4
  %145 = call i32 @tcsetattr(i32 %143, i32 %144, %struct.termios* %6)
  br label %146

146:                                              ; preds = %139, %134, %131
  %147 = load %struct.header*, %struct.header** %4, align 8
  %148 = getelementptr inbounds %struct.header, %struct.header* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = call i32* @detract(i32* %149, i32 0)
  %151 = call i32* @readtty(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %150)
  %152 = load i32, i32* @GCC, align 4
  %153 = call i8* @extract(i32* %151, i32 %152)
  %154 = bitcast i8* %153 to i32*
  %155 = load %struct.header*, %struct.header** %4, align 8
  %156 = getelementptr inbounds %struct.header, %struct.header* %155, i32 0, i32 1
  store i32* %154, i32** %156, align 8
  br label %157

157:                                              ; preds = %146, %126
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @GBCC, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %188

162:                                              ; preds = %157
  %163 = load i64, i64* @ttyset, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %177, label %165

165:                                              ; preds = %162
  %166 = load %struct.header*, %struct.header** %4, align 8
  %167 = getelementptr inbounds %struct.header, %struct.header* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  %171 = load i64, i64* @ttyset, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* @ttyset, align 8
  %173 = load i32, i32* @stdin, align 4
  %174 = call i32 @fileno(i32 %173)
  %175 = load i32, i32* @TCSADRAIN, align 4
  %176 = call i32 @tcsetattr(i32 %174, i32 %175, %struct.termios* %6)
  br label %177

177:                                              ; preds = %170, %165, %162
  %178 = load %struct.header*, %struct.header** %4, align 8
  %179 = getelementptr inbounds %struct.header, %struct.header* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = call i32* @detract(i32* %180, i32 0)
  %182 = call i32* @readtty(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %181)
  %183 = load i32, i32* @GBCC, align 4
  %184 = call i8* @extract(i32* %182, i32 %183)
  %185 = bitcast i8* %184 to i32*
  %186 = load %struct.header*, %struct.header** %4, align 8
  %187 = getelementptr inbounds %struct.header, %struct.header* %186, i32 0, i32 0
  store i32* %185, i32** %187, align 8
  br label %188

188:                                              ; preds = %177, %157
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* @SIGTSTP, align 4
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @signal(i32 %190, i32 %191)
  %193 = load i32, i32* @SIGTTOU, align 4
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @signal(i32 %193, i32 %194)
  %196 = load i32, i32* @SIGTTIN, align 4
  %197 = load i32, i32* %10, align 4
  %198 = call i32 @signal(i32 %196, i32 %197)
  %199 = load i8*, i8** @c_erase, align 8
  %200 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 1
  %201 = load i8**, i8*** %200, align 8
  %202 = load i64, i64* @VERASE, align 8
  %203 = getelementptr inbounds i8*, i8** %201, i64 %202
  store i8* %199, i8** %203, align 8
  %204 = load i8*, i8** @c_kill, align 8
  %205 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 1
  %206 = load i8**, i8*** %205, align 8
  %207 = load i64, i64* @VKILL, align 8
  %208 = getelementptr inbounds i8*, i8** %206, i64 %207
  store i8* %204, i8** %208, align 8
  %209 = load i64, i64* @ttyset, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %189
  %212 = load i32, i32* @stdin, align 4
  %213 = call i32 @fileno(i32 %212)
  %214 = load i32, i32* @TCSADRAIN, align 4
  %215 = call i32 @tcsetattr(i32 %213, i32 %214, %struct.termios* %6)
  br label %216

216:                                              ; preds = %211, %189
  %217 = load i32, i32* @SIGQUIT, align 4
  %218 = load i32, i32* %12, align 4
  %219 = call i32 @signal(i32 %217, i32 %218)
  %220 = load i32, i32* @SIGINT, align 4
  %221 = load i32, i32* %7, align 4
  %222 = call i32 @signal(i32 %220, i32 %221)
  %223 = load i32, i32* %11, align 4
  store i32 %223, i32* %3, align 4
  br label %224

224:                                              ; preds = %216, %26
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i8* @extract(i32*, i32) #1

declare dso_local i32* @readtty(i8*, i32*) #1

declare dso_local i32* @detract(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
