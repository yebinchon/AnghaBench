; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nmdm/extr_nmdm.c_nmdm_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nmdm/extr_nmdm.c_nmdm_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.cdev = type { i32 }
%struct.nmdmsoftc = type { %struct.TYPE_3__, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.tty*, %struct.TYPE_3__*, i32, i32, %struct.nmdmsoftc* }
%struct.tty = type { %struct.cdev* }

@.str = private unnamed_addr constant [5 x i8] c"nmdm\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"nmdmX\00", align 1
@M_NMDM = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@nmdm_task_tty = common dso_local global i32 0, align 4
@nmdm_class = common dso_local global i32 0, align 4
@TTYMK_CLONING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@nmdm_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ucred*, i8*, i32, %struct.cdev**)* @nmdm_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmdm_clone(i8* %0, %struct.ucred* %1, i8* %2, i32 %3, %struct.cdev** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cdev**, align 8
  %11 = alloca %struct.nmdmsoftc*, align 8
  %12 = alloca %struct.tty*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store %struct.ucred* %1, %struct.ucred** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.cdev** %4, %struct.cdev*** %10, align 8
  %16 = load %struct.cdev**, %struct.cdev*** %10, align 8
  %17 = load %struct.cdev*, %struct.cdev** %16, align 8
  %18 = icmp ne %struct.cdev* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %197

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @strncmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %197

25:                                               ; preds = %20
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %197

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = getelementptr inbounds i8, i8* %36, i64 -1
  store i8* %37, i8** %13, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %15, align 1
  %40 = load i8, i8* %15, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 65
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load i8, i8* %15, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 66
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %197

48:                                               ; preds = %43, %31
  %49 = load i32, i32* @M_NMDM, align 4
  %50 = load i32, i32* @M_WAITOK, align 4
  %51 = load i32, i32* @M_ZERO, align 4
  %52 = or i32 %50, %51
  %53 = call %struct.nmdmsoftc* @malloc(i32 72, i32 %49, i32 %52)
  store %struct.nmdmsoftc* %53, %struct.nmdmsoftc** %11, align 8
  %54 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %55 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %54, i32 0, i32 2
  %56 = load i32, i32* @MTX_DEF, align 4
  %57 = call i32 @mtx_init(i32* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32 %56)
  %58 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %59 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %60 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 4
  store %struct.nmdmsoftc* %58, %struct.nmdmsoftc** %61, align 8
  %62 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %63 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %62, i32 0, i32 0
  %64 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %65 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %66, align 8
  %67 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %68 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32, i32* @nmdm_task_tty, align 4
  %71 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %72 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %71, i32 0, i32 1
  %73 = call i32 @TASK_INIT(i32* %69, i32 0, i32 %70, %struct.TYPE_3__* %72)
  %74 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %75 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %78 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %77, i32 0, i32 2
  %79 = call i32 @callout_init_mtx(i32* %76, i32* %78, i32 0)
  %80 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %81 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %82 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  store %struct.nmdmsoftc* %80, %struct.nmdmsoftc** %83, align 8
  %84 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %85 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %84, i32 0, i32 1
  %86 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %87 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store %struct.TYPE_3__* %85, %struct.TYPE_3__** %88, align 8
  %89 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %90 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32, i32* @nmdm_task_tty, align 4
  %93 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %94 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %93, i32 0, i32 0
  %95 = call i32 @TASK_INIT(i32* %91, i32 0, i32 %92, %struct.TYPE_3__* %94)
  %96 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %97 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %100 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %99, i32 0, i32 2
  %101 = call i32 @callout_init_mtx(i32* %98, i32* %100, i32 0)
  %102 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %103 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %102, i32 0, i32 1
  %104 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %105 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %104, i32 0, i32 2
  %106 = call i8* @tty_alloc_mutex(i32* @nmdm_class, %struct.TYPE_3__* %103, i32* %105)
  %107 = bitcast i8* %106 to %struct.tty*
  %108 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %109 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store %struct.tty* %107, %struct.tty** %110, align 8
  store %struct.tty* %107, %struct.tty** %12, align 8
  %111 = load i8*, i8** %13, align 8
  store i8 65, i8* %111, align 1
  %112 = load %struct.tty*, %struct.tty** %12, align 8
  %113 = load i8, i8* %15, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 65
  br i1 %115, label %116, label %118

116:                                              ; preds = %48
  %117 = load i32, i32* @TTYMK_CLONING, align 4
  br label %119

118:                                              ; preds = %48
  br label %119

119:                                              ; preds = %118, %116
  %120 = phi i32 [ %117, %116 ], [ 0, %118 ]
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @tty_makedevf(%struct.tty* %112, i32* null, i32 %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %121)
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %119
  %126 = load i8, i8* %15, align 1
  %127 = load i8*, i8** %13, align 8
  store i8 %126, i8* %127, align 1
  %128 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %129 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %128, i32 0, i32 2
  %130 = call i32 @mtx_destroy(i32* %129)
  %131 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %132 = load i32, i32* @M_NMDM, align 4
  %133 = call i32 @free(%struct.nmdmsoftc* %131, i32 %132)
  br label %197

134:                                              ; preds = %119
  %135 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %136 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %135, i32 0, i32 0
  %137 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %138 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %137, i32 0, i32 2
  %139 = call i8* @tty_alloc_mutex(i32* @nmdm_class, %struct.TYPE_3__* %136, i32* %138)
  %140 = bitcast i8* %139 to %struct.tty*
  %141 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %142 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  store %struct.tty* %140, %struct.tty** %143, align 8
  store %struct.tty* %140, %struct.tty** %12, align 8
  %144 = load i8*, i8** %13, align 8
  store i8 66, i8* %144, align 1
  %145 = load %struct.tty*, %struct.tty** %12, align 8
  %146 = load i8, i8* %15, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 66
  br i1 %148, label %149, label %151

149:                                              ; preds = %134
  %150 = load i32, i32* @TTYMK_CLONING, align 4
  br label %152

151:                                              ; preds = %134
  br label %152

152:                                              ; preds = %151, %149
  %153 = phi i32 [ %150, %149 ], [ 0, %151 ]
  %154 = load i8*, i8** %8, align 8
  %155 = call i32 @tty_makedevf(%struct.tty* %145, i32* null, i32 %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %154)
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %152
  %159 = load i8, i8* %15, align 1
  %160 = load i8*, i8** %13, align 8
  store i8 %159, i8* %160, align 1
  %161 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %162 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %161, i32 0, i32 2
  %163 = call i32 @mtx_lock(i32* %162)
  %164 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %165 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %166, align 8
  %167 = call i32 @atomic_add_int(i32* @nmdm_count, i32 1)
  %168 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %169 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load %struct.tty*, %struct.tty** %170, align 8
  %172 = call i32 @tty_rel_gone(%struct.tty* %171)
  br label %197

173:                                              ; preds = %152
  %174 = load i8, i8* %15, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 65
  br i1 %176, label %177, label %185

177:                                              ; preds = %173
  %178 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %179 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load %struct.tty*, %struct.tty** %180, align 8
  %182 = getelementptr inbounds %struct.tty, %struct.tty* %181, i32 0, i32 0
  %183 = load %struct.cdev*, %struct.cdev** %182, align 8
  %184 = load %struct.cdev**, %struct.cdev*** %10, align 8
  store %struct.cdev* %183, %struct.cdev** %184, align 8
  br label %193

185:                                              ; preds = %173
  %186 = load %struct.nmdmsoftc*, %struct.nmdmsoftc** %11, align 8
  %187 = getelementptr inbounds %struct.nmdmsoftc, %struct.nmdmsoftc* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load %struct.tty*, %struct.tty** %188, align 8
  %190 = getelementptr inbounds %struct.tty, %struct.tty* %189, i32 0, i32 0
  %191 = load %struct.cdev*, %struct.cdev** %190, align 8
  %192 = load %struct.cdev**, %struct.cdev*** %10, align 8
  store %struct.cdev* %191, %struct.cdev** %192, align 8
  br label %193

193:                                              ; preds = %185, %177
  %194 = load i8, i8* %15, align 1
  %195 = load i8*, i8** %13, align 8
  store i8 %194, i8* %195, align 1
  %196 = call i32 @atomic_add_int(i32* @nmdm_count, i32 1)
  br label %197

197:                                              ; preds = %193, %158, %125, %47, %30, %24, %19
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.nmdmsoftc* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i8* @tty_alloc_mutex(i32*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @tty_makedevf(%struct.tty*, i32*, i32, i8*, i8*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.nmdmsoftc*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @tty_rel_gone(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
