; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_compat.c_tty_ioctl_compat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_compat.c_tty_ioctl_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.termios }
%struct.termios = type { i8**, i32, i32 }
%struct.thread = type { i32 }
%struct.sgttyb = type { i32, i8*, i8*, i8*, i8* }
%struct.tchars = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ltchars = type { i8*, i8*, i8*, i8*, i8*, i8* }

@compatspeeds = common dso_local global i32 0, align 4
@VERASE = common dso_local global i64 0, align 8
@VKILL = common dso_local global i64 0, align 8
@VINTR = common dso_local global i64 0, align 8
@VQUIT = common dso_local global i64 0, align 8
@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@VEOF = common dso_local global i64 0, align 8
@VEOL = common dso_local global i64 0, align 8
@VSUSP = common dso_local global i64 0, align 8
@VDSUSP = common dso_local global i64 0, align 8
@VREPRINT = common dso_local global i64 0, align 8
@VDISCARD = common dso_local global i64 0, align 8
@VWERASE = common dso_local global i64 0, align 8
@VLNEXT = common dso_local global i64 0, align 8
@ttydebug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"CLGET: returning %x\0A\00", align 1
@TIOCSETD = common dso_local global i32 0, align 4
@TIOCCONS = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_ioctl_compat(%struct.tty* %0, i32 %1, %struct.termios* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.termios*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.termios, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sgttyb*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.tchars*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.ltchars*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.termios* %2, %struct.termios** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %234 [
    i32 129, label %23
    i32 130, label %23
    i32 131, label %23
    i32 128, label %23
    i32 134, label %23
    i32 135, label %23
    i32 132, label %23
    i32 137, label %40
    i32 138, label %94
    i32 136, label %137
    i32 133, label %180
    i32 140, label %208
    i32 139, label %211
    i32 141, label %227
  ]

23:                                               ; preds = %5, %5, %5, %5, %5, %5, %5
  %24 = load %struct.tty*, %struct.tty** %7, align 8
  %25 = getelementptr inbounds %struct.tty, %struct.tty* %24, i32 0, i32 1
  %26 = bitcast %struct.termios* %12 to i8*
  %27 = bitcast %struct.termios* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false)
  %28 = load %struct.tty*, %struct.tty** %7, align 8
  %29 = load %struct.termios*, %struct.termios** %9, align 8
  %30 = call i32 @ttsetcompat(%struct.tty* %28, i32* %8, %struct.termios* %29, %struct.termios* %12)
  store i32 %30, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %6, align 4
  br label %237

34:                                               ; preds = %23
  %35 = load %struct.tty*, %struct.tty** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.thread*, %struct.thread** %11, align 8
  %39 = call i32 @tty_ioctl(%struct.tty* %35, i32 %36, %struct.termios* %12, i32 %37, %struct.thread* %38)
  store i32 %39, i32* %6, align 4
  br label %237

40:                                               ; preds = %5
  %41 = load %struct.termios*, %struct.termios** %9, align 8
  %42 = bitcast %struct.termios* %41 to %struct.sgttyb*
  store %struct.sgttyb* %42, %struct.sgttyb** %14, align 8
  %43 = load %struct.tty*, %struct.tty** %7, align 8
  %44 = getelementptr inbounds %struct.tty, %struct.tty* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.termios, %struct.termios* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  store i8** %46, i8*** %15, align 8
  %47 = load %struct.tty*, %struct.tty** %7, align 8
  %48 = getelementptr inbounds %struct.tty, %struct.tty* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.termios, %struct.termios* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @compatspeeds, align 4
  %52 = call i8* @ttcompatspeedtab(i32 %50, i32 %51)
  %53 = load %struct.sgttyb*, %struct.sgttyb** %14, align 8
  %54 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load %struct.tty*, %struct.tty** %7, align 8
  %56 = getelementptr inbounds %struct.tty, %struct.tty* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.termios, %struct.termios* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %40
  %61 = load %struct.sgttyb*, %struct.sgttyb** %14, align 8
  %62 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %61, i32 0, i32 4
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.sgttyb*, %struct.sgttyb** %14, align 8
  %65 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  br label %75

66:                                               ; preds = %40
  %67 = load %struct.tty*, %struct.tty** %7, align 8
  %68 = getelementptr inbounds %struct.tty, %struct.tty* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.termios, %struct.termios* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @compatspeeds, align 4
  %72 = call i8* @ttcompatspeedtab(i32 %70, i32 %71)
  %73 = load %struct.sgttyb*, %struct.sgttyb** %14, align 8
  %74 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %66, %60
  %76 = load i8**, i8*** %15, align 8
  %77 = load i64, i64* @VERASE, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.sgttyb*, %struct.sgttyb** %14, align 8
  %81 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load i8**, i8*** %15, align 8
  %83 = load i64, i64* @VKILL, align 8
  %84 = getelementptr inbounds i8*, i8** %82, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.sgttyb*, %struct.sgttyb** %14, align 8
  %87 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.tty*, %struct.tty** %7, align 8
  %89 = call i32 @ttcompatgetflags(%struct.tty* %88)
  %90 = load %struct.tty*, %struct.tty** %7, align 8
  %91 = getelementptr inbounds %struct.tty, %struct.tty* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.sgttyb*, %struct.sgttyb** %14, align 8
  %93 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %92, i32 0, i32 0
  store i32 %89, i32* %93, align 8
  br label %236

94:                                               ; preds = %5
  %95 = load %struct.termios*, %struct.termios** %9, align 8
  %96 = bitcast %struct.termios* %95 to %struct.tchars*
  store %struct.tchars* %96, %struct.tchars** %16, align 8
  %97 = load %struct.tty*, %struct.tty** %7, align 8
  %98 = getelementptr inbounds %struct.tty, %struct.tty* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.termios, %struct.termios* %98, i32 0, i32 0
  %100 = load i8**, i8*** %99, align 8
  store i8** %100, i8*** %17, align 8
  %101 = load i8**, i8*** %17, align 8
  %102 = load i64, i64* @VINTR, align 8
  %103 = getelementptr inbounds i8*, i8** %101, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.tchars*, %struct.tchars** %16, align 8
  %106 = getelementptr inbounds %struct.tchars, %struct.tchars* %105, i32 0, i32 5
  store i8* %104, i8** %106, align 8
  %107 = load i8**, i8*** %17, align 8
  %108 = load i64, i64* @VQUIT, align 8
  %109 = getelementptr inbounds i8*, i8** %107, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.tchars*, %struct.tchars** %16, align 8
  %112 = getelementptr inbounds %struct.tchars, %struct.tchars* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load i8**, i8*** %17, align 8
  %114 = load i64, i64* @VSTART, align 8
  %115 = getelementptr inbounds i8*, i8** %113, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.tchars*, %struct.tchars** %16, align 8
  %118 = getelementptr inbounds %struct.tchars, %struct.tchars* %117, i32 0, i32 3
  store i8* %116, i8** %118, align 8
  %119 = load i8**, i8*** %17, align 8
  %120 = load i64, i64* @VSTOP, align 8
  %121 = getelementptr inbounds i8*, i8** %119, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.tchars*, %struct.tchars** %16, align 8
  %124 = getelementptr inbounds %struct.tchars, %struct.tchars* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = load i8**, i8*** %17, align 8
  %126 = load i64, i64* @VEOF, align 8
  %127 = getelementptr inbounds i8*, i8** %125, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.tchars*, %struct.tchars** %16, align 8
  %130 = getelementptr inbounds %struct.tchars, %struct.tchars* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  %131 = load i8**, i8*** %17, align 8
  %132 = load i64, i64* @VEOL, align 8
  %133 = getelementptr inbounds i8*, i8** %131, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.tchars*, %struct.tchars** %16, align 8
  %136 = getelementptr inbounds %struct.tchars, %struct.tchars* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  br label %236

137:                                              ; preds = %5
  %138 = load %struct.termios*, %struct.termios** %9, align 8
  %139 = bitcast %struct.termios* %138 to %struct.ltchars*
  store %struct.ltchars* %139, %struct.ltchars** %18, align 8
  %140 = load %struct.tty*, %struct.tty** %7, align 8
  %141 = getelementptr inbounds %struct.tty, %struct.tty* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.termios, %struct.termios* %141, i32 0, i32 0
  %143 = load i8**, i8*** %142, align 8
  store i8** %143, i8*** %19, align 8
  %144 = load i8**, i8*** %19, align 8
  %145 = load i64, i64* @VSUSP, align 8
  %146 = getelementptr inbounds i8*, i8** %144, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.ltchars*, %struct.ltchars** %18, align 8
  %149 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %148, i32 0, i32 5
  store i8* %147, i8** %149, align 8
  %150 = load i8**, i8*** %19, align 8
  %151 = load i64, i64* @VDSUSP, align 8
  %152 = getelementptr inbounds i8*, i8** %150, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.ltchars*, %struct.ltchars** %18, align 8
  %155 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %154, i32 0, i32 4
  store i8* %153, i8** %155, align 8
  %156 = load i8**, i8*** %19, align 8
  %157 = load i64, i64* @VREPRINT, align 8
  %158 = getelementptr inbounds i8*, i8** %156, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.ltchars*, %struct.ltchars** %18, align 8
  %161 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %160, i32 0, i32 3
  store i8* %159, i8** %161, align 8
  %162 = load i8**, i8*** %19, align 8
  %163 = load i64, i64* @VDISCARD, align 8
  %164 = getelementptr inbounds i8*, i8** %162, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.ltchars*, %struct.ltchars** %18, align 8
  %167 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %166, i32 0, i32 2
  store i8* %165, i8** %167, align 8
  %168 = load i8**, i8*** %19, align 8
  %169 = load i64, i64* @VWERASE, align 8
  %170 = getelementptr inbounds i8*, i8** %168, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.ltchars*, %struct.ltchars** %18, align 8
  %173 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  %174 = load i8**, i8*** %19, align 8
  %175 = load i64, i64* @VLNEXT, align 8
  %176 = getelementptr inbounds i8*, i8** %174, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.ltchars*, %struct.ltchars** %18, align 8
  %179 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %178, i32 0, i32 0
  store i8* %177, i8** %179, align 8
  br label %236

180:                                              ; preds = %5
  %181 = load %struct.tty*, %struct.tty** %7, align 8
  %182 = call i32 @ttcompatgetflags(%struct.tty* %181)
  %183 = sext i32 %182 to i64
  %184 = and i64 %183, 4294901760
  %185 = load %struct.tty*, %struct.tty** %7, align 8
  %186 = getelementptr inbounds %struct.tty, %struct.tty* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = and i32 %187, 65535
  %189 = sext i32 %188 to i64
  %190 = or i64 %184, %189
  %191 = trunc i64 %190 to i32
  %192 = load %struct.tty*, %struct.tty** %7, align 8
  %193 = getelementptr inbounds %struct.tty, %struct.tty* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  %194 = load %struct.tty*, %struct.tty** %7, align 8
  %195 = getelementptr inbounds %struct.tty, %struct.tty* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = ashr i32 %196, 16
  %198 = load %struct.termios*, %struct.termios** %9, align 8
  %199 = bitcast %struct.termios* %198 to i32*
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* @ttydebug, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %180
  %203 = load %struct.termios*, %struct.termios** %9, align 8
  %204 = bitcast %struct.termios* %203 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %202, %180
  br label %236

208:                                              ; preds = %5
  %209 = load %struct.termios*, %struct.termios** %9, align 8
  %210 = bitcast %struct.termios* %209 to i32*
  store i32 2, i32* %210, align 4
  br label %236

211:                                              ; preds = %5
  store i32 0, i32* %20, align 4
  %212 = load %struct.tty*, %struct.tty** %7, align 8
  %213 = load i32, i32* @TIOCSETD, align 4
  %214 = load %struct.termios*, %struct.termios** %9, align 8
  %215 = bitcast %struct.termios* %214 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 2
  br i1 %217, label %218, label %220

218:                                              ; preds = %211
  %219 = bitcast i32* %20 to %struct.termios*
  br label %222

220:                                              ; preds = %211
  %221 = load %struct.termios*, %struct.termios** %9, align 8
  br label %222

222:                                              ; preds = %220, %218
  %223 = phi %struct.termios* [ %219, %218 ], [ %221, %220 ]
  %224 = load i32, i32* %10, align 4
  %225 = load %struct.thread*, %struct.thread** %11, align 8
  %226 = call i32 @tty_ioctl(%struct.tty* %212, i32 %213, %struct.termios* %223, i32 %224, %struct.thread* %225)
  store i32 %226, i32* %6, align 4
  br label %237

227:                                              ; preds = %5
  store i32 1, i32* %21, align 4
  %228 = load %struct.tty*, %struct.tty** %7, align 8
  %229 = load i32, i32* @TIOCCONS, align 4
  %230 = bitcast i32* %21 to %struct.termios*
  %231 = load i32, i32* %10, align 4
  %232 = load %struct.thread*, %struct.thread** %11, align 8
  %233 = call i32 @tty_ioctl(%struct.tty* %228, i32 %229, %struct.termios* %230, i32 %231, %struct.thread* %232)
  store i32 %233, i32* %6, align 4
  br label %237

234:                                              ; preds = %5
  %235 = load i32, i32* @ENOIOCTL, align 4
  store i32 %235, i32* %6, align 4
  br label %237

236:                                              ; preds = %208, %207, %137, %94, %75
  store i32 0, i32* %6, align 4
  br label %237

237:                                              ; preds = %236, %234, %227, %222, %34, %32
  %238 = load i32, i32* %6, align 4
  ret i32 %238
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ttsetcompat(%struct.tty*, i32*, %struct.termios*, %struct.termios*) #2

declare dso_local i32 @tty_ioctl(%struct.tty*, i32, %struct.termios*, i32, %struct.thread*) #2

declare dso_local i8* @ttcompatspeedtab(i32, i32) #2

declare dso_local i32 @ttcompatgetflags(%struct.tty*) #2

declare dso_local i32 @printf(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
