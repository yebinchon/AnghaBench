; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_compat.c_ttsetcompat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_compat.c_ttsetcompat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.termios = type { i8*, i8*, i8* }
%struct.sgttyb = type { i32, i32, i8, i8, i32 }
%struct.tchars = type { i8, i8, i8, i8, i8, i8 }
%struct.ltchars = type { i8, i8, i8, i8, i8, i8 }

@MAX_SPEED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@compatspeeds = common dso_local global i32 0, align 4
@compatspcodes = common dso_local global i8** null, align 8
@VERASE = common dso_local global i64 0, align 8
@VKILL = common dso_local global i64 0, align 8
@TIOCSETAF = common dso_local global i32 0, align 4
@TIOCSETA = common dso_local global i32 0, align 4
@VINTR = common dso_local global i64 0, align 8
@VQUIT = common dso_local global i64 0, align 8
@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@VEOF = common dso_local global i64 0, align 8
@VEOL = common dso_local global i64 0, align 8
@_POSIX_VDISABLE = common dso_local global i8 0, align 1
@VEOL2 = common dso_local global i64 0, align 8
@VSUSP = common dso_local global i64 0, align 8
@VDSUSP = common dso_local global i64 0, align 8
@VREPRINT = common dso_local global i64 0, align 8
@VDISCARD = common dso_local global i64 0, align 8
@VWERASE = common dso_local global i64 0, align 8
@VLNEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i32*, i64, %struct.termios*)* @ttsetcompat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttsetcompat(%struct.tty* %0, i32* %1, i64 %2, %struct.termios* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.termios*, align 8
  %10 = alloca %struct.sgttyb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tchars*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ltchars*, align 8
  %15 = alloca i8*, align 8
  store %struct.tty* %0, %struct.tty** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.termios* %3, %struct.termios** %9, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %290 [
    i32 129, label %18
    i32 130, label %18
    i32 131, label %133
    i32 128, label %190
    i32 133, label %234
    i32 134, label %234
    i32 132, label %234
  ]

18:                                               ; preds = %4, %4
  %19 = load i64, i64* %8, align 8
  %20 = inttoptr i64 %19 to %struct.sgttyb*
  store %struct.sgttyb* %20, %struct.sgttyb** %10, align 8
  %21 = load %struct.sgttyb*, %struct.sgttyb** %10, align 8
  %22 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @MAX_SPEED, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %18
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %5, align 4
  br label %291

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.tty*, %struct.tty** %6, align 8
  %34 = getelementptr inbounds %struct.tty, %struct.tty* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* @compatspeeds, align 4
  %38 = call i32 @ttcompatspeedtab(i8* %36, i32 %37)
  %39 = icmp ne i32 %32, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = load i8**, i8*** @compatspcodes, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.termios*, %struct.termios** %9, align 8
  %47 = getelementptr inbounds %struct.termios, %struct.termios* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  br label %55

48:                                               ; preds = %31
  %49 = load %struct.tty*, %struct.tty** %6, align 8
  %50 = getelementptr inbounds %struct.tty, %struct.tty* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.termios*, %struct.termios** %9, align 8
  %54 = getelementptr inbounds %struct.termios, %struct.termios* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %48, %40
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.sgttyb*, %struct.sgttyb** %10, align 8
  %58 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* @MAX_SPEED, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62, %56
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %5, align 4
  br label %291

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.tty*, %struct.tty** %6, align 8
  %70 = getelementptr inbounds %struct.tty, %struct.tty* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* @compatspeeds, align 4
  %74 = call i32 @ttcompatspeedtab(i8* %72, i32 %73)
  %75 = icmp ne i32 %68, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = load i8**, i8*** @compatspcodes, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.termios*, %struct.termios** %9, align 8
  %83 = getelementptr inbounds %struct.termios, %struct.termios* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  br label %91

84:                                               ; preds = %67
  %85 = load %struct.tty*, %struct.tty** %6, align 8
  %86 = getelementptr inbounds %struct.tty, %struct.tty* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.termios*, %struct.termios** %9, align 8
  %90 = getelementptr inbounds %struct.termios, %struct.termios* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  br label %91

91:                                               ; preds = %84, %76
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.sgttyb*, %struct.sgttyb** %10, align 8
  %94 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %93, i32 0, i32 2
  %95 = load i8, i8* %94, align 4
  %96 = load %struct.termios*, %struct.termios** %9, align 8
  %97 = getelementptr inbounds %struct.termios, %struct.termios* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i64, i64* @VERASE, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8 %95, i8* %100, align 1
  %101 = load %struct.sgttyb*, %struct.sgttyb** %10, align 8
  %102 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %101, i32 0, i32 3
  %103 = load i8, i8* %102, align 1
  %104 = load %struct.termios*, %struct.termios** %9, align 8
  %105 = getelementptr inbounds %struct.termios, %struct.termios* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i64, i64* @VKILL, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8 %103, i8* %108, align 1
  %109 = load %struct.tty*, %struct.tty** %6, align 8
  %110 = getelementptr inbounds %struct.tty, %struct.tty* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, -65536
  %113 = load %struct.sgttyb*, %struct.sgttyb** %10, align 8
  %114 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 65535
  %117 = or i32 %112, %116
  %118 = load %struct.tty*, %struct.tty** %6, align 8
  %119 = getelementptr inbounds %struct.tty, %struct.tty* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.tty*, %struct.tty** %6, align 8
  %121 = load %struct.termios*, %struct.termios** %9, align 8
  %122 = call i32 @ttcompatsetflags(%struct.tty* %120, %struct.termios* %121)
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 129
  br i1 %125, label %126, label %128

126:                                              ; preds = %92
  %127 = load i32, i32* @TIOCSETAF, align 4
  br label %130

128:                                              ; preds = %92
  %129 = load i32, i32* @TIOCSETA, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  %132 = load i32*, i32** %7, align 8
  store i32 %131, i32* %132, align 4
  br label %290

133:                                              ; preds = %4
  %134 = load i64, i64* %8, align 8
  %135 = inttoptr i64 %134 to %struct.tchars*
  store %struct.tchars* %135, %struct.tchars** %12, align 8
  %136 = load %struct.termios*, %struct.termios** %9, align 8
  %137 = getelementptr inbounds %struct.termios, %struct.termios* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  store i8* %138, i8** %13, align 8
  %139 = load %struct.tchars*, %struct.tchars** %12, align 8
  %140 = getelementptr inbounds %struct.tchars, %struct.tchars* %139, i32 0, i32 0
  %141 = load i8, i8* %140, align 1
  %142 = load i8*, i8** %13, align 8
  %143 = load i64, i64* @VINTR, align 8
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8 %141, i8* %144, align 1
  %145 = load %struct.tchars*, %struct.tchars** %12, align 8
  %146 = getelementptr inbounds %struct.tchars, %struct.tchars* %145, i32 0, i32 1
  %147 = load i8, i8* %146, align 1
  %148 = load i8*, i8** %13, align 8
  %149 = load i64, i64* @VQUIT, align 8
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  store i8 %147, i8* %150, align 1
  %151 = load %struct.tchars*, %struct.tchars** %12, align 8
  %152 = getelementptr inbounds %struct.tchars, %struct.tchars* %151, i32 0, i32 2
  %153 = load i8, i8* %152, align 1
  %154 = load i8*, i8** %13, align 8
  %155 = load i64, i64* @VSTART, align 8
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8 %153, i8* %156, align 1
  %157 = load %struct.tchars*, %struct.tchars** %12, align 8
  %158 = getelementptr inbounds %struct.tchars, %struct.tchars* %157, i32 0, i32 3
  %159 = load i8, i8* %158, align 1
  %160 = load i8*, i8** %13, align 8
  %161 = load i64, i64* @VSTOP, align 8
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  store i8 %159, i8* %162, align 1
  %163 = load %struct.tchars*, %struct.tchars** %12, align 8
  %164 = getelementptr inbounds %struct.tchars, %struct.tchars* %163, i32 0, i32 4
  %165 = load i8, i8* %164, align 1
  %166 = load i8*, i8** %13, align 8
  %167 = load i64, i64* @VEOF, align 8
  %168 = getelementptr inbounds i8, i8* %166, i64 %167
  store i8 %165, i8* %168, align 1
  %169 = load %struct.tchars*, %struct.tchars** %12, align 8
  %170 = getelementptr inbounds %struct.tchars, %struct.tchars* %169, i32 0, i32 5
  %171 = load i8, i8* %170, align 1
  %172 = load i8*, i8** %13, align 8
  %173 = load i64, i64* @VEOL, align 8
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8 %171, i8* %174, align 1
  %175 = load %struct.tchars*, %struct.tchars** %12, align 8
  %176 = getelementptr inbounds %struct.tchars, %struct.tchars* %175, i32 0, i32 5
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = load i8, i8* @_POSIX_VDISABLE, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %178, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %133
  %183 = load i8, i8* @_POSIX_VDISABLE, align 1
  %184 = load i8*, i8** %13, align 8
  %185 = load i64, i64* @VEOL2, align 8
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  store i8 %183, i8* %186, align 1
  br label %187

187:                                              ; preds = %182, %133
  %188 = load i32, i32* @TIOCSETA, align 4
  %189 = load i32*, i32** %7, align 8
  store i32 %188, i32* %189, align 4
  br label %290

190:                                              ; preds = %4
  %191 = load i64, i64* %8, align 8
  %192 = inttoptr i64 %191 to %struct.ltchars*
  store %struct.ltchars* %192, %struct.ltchars** %14, align 8
  %193 = load %struct.termios*, %struct.termios** %9, align 8
  %194 = getelementptr inbounds %struct.termios, %struct.termios* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  store i8* %195, i8** %15, align 8
  %196 = load %struct.ltchars*, %struct.ltchars** %14, align 8
  %197 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %196, i32 0, i32 0
  %198 = load i8, i8* %197, align 1
  %199 = load i8*, i8** %15, align 8
  %200 = load i64, i64* @VSUSP, align 8
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  store i8 %198, i8* %201, align 1
  %202 = load %struct.ltchars*, %struct.ltchars** %14, align 8
  %203 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %202, i32 0, i32 1
  %204 = load i8, i8* %203, align 1
  %205 = load i8*, i8** %15, align 8
  %206 = load i64, i64* @VDSUSP, align 8
  %207 = getelementptr inbounds i8, i8* %205, i64 %206
  store i8 %204, i8* %207, align 1
  %208 = load %struct.ltchars*, %struct.ltchars** %14, align 8
  %209 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %208, i32 0, i32 2
  %210 = load i8, i8* %209, align 1
  %211 = load i8*, i8** %15, align 8
  %212 = load i64, i64* @VREPRINT, align 8
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8 %210, i8* %213, align 1
  %214 = load %struct.ltchars*, %struct.ltchars** %14, align 8
  %215 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %214, i32 0, i32 3
  %216 = load i8, i8* %215, align 1
  %217 = load i8*, i8** %15, align 8
  %218 = load i64, i64* @VDISCARD, align 8
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  store i8 %216, i8* %219, align 1
  %220 = load %struct.ltchars*, %struct.ltchars** %14, align 8
  %221 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %220, i32 0, i32 4
  %222 = load i8, i8* %221, align 1
  %223 = load i8*, i8** %15, align 8
  %224 = load i64, i64* @VWERASE, align 8
  %225 = getelementptr inbounds i8, i8* %223, i64 %224
  store i8 %222, i8* %225, align 1
  %226 = load %struct.ltchars*, %struct.ltchars** %14, align 8
  %227 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %226, i32 0, i32 5
  %228 = load i8, i8* %227, align 1
  %229 = load i8*, i8** %15, align 8
  %230 = load i64, i64* @VLNEXT, align 8
  %231 = getelementptr inbounds i8, i8* %229, i64 %230
  store i8 %228, i8* %231, align 1
  %232 = load i32, i32* @TIOCSETA, align 4
  %233 = load i32*, i32** %7, align 8
  store i32 %232, i32* %233, align 4
  br label %290

234:                                              ; preds = %4, %4, %4
  %235 = load i32*, i32** %7, align 8
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %236, 132
  br i1 %237, label %238, label %250

238:                                              ; preds = %234
  %239 = load %struct.tty*, %struct.tty** %6, align 8
  %240 = getelementptr inbounds %struct.tty, %struct.tty* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = and i32 %241, 65535
  %243 = load i64, i64* %8, align 8
  %244 = inttoptr i64 %243 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = shl i32 %245, 16
  %247 = or i32 %242, %246
  %248 = load %struct.tty*, %struct.tty** %6, align 8
  %249 = getelementptr inbounds %struct.tty, %struct.tty* %248, i32 0, i32 0
  store i32 %247, i32* %249, align 8
  br label %284

250:                                              ; preds = %234
  %251 = load %struct.tty*, %struct.tty** %6, align 8
  %252 = call i32 @ttcompatgetflags(%struct.tty* %251)
  %253 = and i32 %252, -65536
  %254 = load %struct.tty*, %struct.tty** %6, align 8
  %255 = getelementptr inbounds %struct.tty, %struct.tty* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = and i32 %256, 65535
  %258 = or i32 %253, %257
  %259 = load %struct.tty*, %struct.tty** %6, align 8
  %260 = getelementptr inbounds %struct.tty, %struct.tty* %259, i32 0, i32 0
  store i32 %258, i32* %260, align 8
  %261 = load i32*, i32** %7, align 8
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %262, 133
  br i1 %263, label %264, label %273

264:                                              ; preds = %250
  %265 = load i64, i64* %8, align 8
  %266 = inttoptr i64 %265 to i32*
  %267 = load i32, i32* %266, align 4
  %268 = shl i32 %267, 16
  %269 = load %struct.tty*, %struct.tty** %6, align 8
  %270 = getelementptr inbounds %struct.tty, %struct.tty* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 8
  br label %283

273:                                              ; preds = %250
  %274 = load i64, i64* %8, align 8
  %275 = inttoptr i64 %274 to i32*
  %276 = load i32, i32* %275, align 4
  %277 = shl i32 %276, 16
  %278 = xor i32 %277, -1
  %279 = load %struct.tty*, %struct.tty** %6, align 8
  %280 = getelementptr inbounds %struct.tty, %struct.tty* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = and i32 %281, %278
  store i32 %282, i32* %280, align 8
  br label %283

283:                                              ; preds = %273, %264
  br label %284

284:                                              ; preds = %283, %238
  %285 = load %struct.tty*, %struct.tty** %6, align 8
  %286 = load %struct.termios*, %struct.termios** %9, align 8
  %287 = call i32 @ttcompatsetlflags(%struct.tty* %285, %struct.termios* %286)
  %288 = load i32, i32* @TIOCSETA, align 4
  %289 = load i32*, i32** %7, align 8
  store i32 %288, i32* %289, align 4
  br label %290

290:                                              ; preds = %4, %284, %190, %187, %130
  store i32 0, i32* %5, align 4
  br label %291

291:                                              ; preds = %290, %65, %29
  %292 = load i32, i32* %5, align 4
  ret i32 %292
}

declare dso_local i32 @ttcompatspeedtab(i8*, i32) #1

declare dso_local i32 @ttcompatsetflags(%struct.tty*, %struct.termios*) #1

declare dso_local i32 @ttcompatgetflags(%struct.tty*) #1

declare dso_local i32 @ttcompatsetlflags(%struct.tty*, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
