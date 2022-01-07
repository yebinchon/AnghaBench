; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_msdos.c_msdos_makefs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_msdos.c_msdos_makefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32, i32, %struct.msdos_options_ex* }
%struct.msdos_options_ex = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.vnode = type { %struct.TYPE_5__* }
%struct.timeval = type { i32 }
%struct.msdosfsmount = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"inconsistent sectorsize -S %u!= -o bytes_per_sector %u\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Creating `%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"mkfs_msdos\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"msdosfs_mount\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"msdosfs_root\00", align 1
@debug = common dso_local global i32 0, align 4
@DEBUG_FS_MAKEFS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"msdos_makefs: image %s directory %s root %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Populating `%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Image file `%s' not created.\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"msdos_populate_dir\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Unable to update FSInfo block.\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Image `%s' complete\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msdos_makefs(i8* %0, i8* %1, i32* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.msdos_options_ex*, align 8
  %10 = alloca %struct.vnode, align 8
  %11 = alloca %struct.vnode, align 8
  %12 = alloca %struct.timeval, align 4
  %13 = alloca %struct.msdosfsmount*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 5
  %17 = load %struct.msdos_options_ex*, %struct.msdos_options_ex** %16, align 8
  store %struct.msdos_options_ex* %17, %struct.msdos_options_ex** %9, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.msdos_options_ex*, %struct.msdos_options_ex** %9, align 8
  %40 = getelementptr inbounds %struct.msdos_options_ex, %struct.msdos_options_ex* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = call i32 @MAX(i32 %42, i64 %49)
  %51 = load %struct.msdos_options_ex*, %struct.msdos_options_ex** %9, align 8
  %52 = getelementptr inbounds %struct.msdos_options_ex, %struct.msdos_options_ex* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.msdos_options_ex*, %struct.msdos_options_ex** %9, align 8
  %63 = getelementptr inbounds %struct.msdos_options_ex, %struct.msdos_options_ex* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  br label %65

65:                                               ; preds = %58, %4
  %66 = load %struct.msdos_options_ex*, %struct.msdos_options_ex** %9, align 8
  %67 = getelementptr inbounds %struct.msdos_options_ex, %struct.msdos_options_ex* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  store i32 512, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %71
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.msdos_options_ex*, %struct.msdos_options_ex** %9, align 8
  %84 = getelementptr inbounds %struct.msdos_options_ex, %struct.msdos_options_ex* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 8
  br label %118

86:                                               ; preds = %65
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.msdos_options_ex*, %struct.msdos_options_ex** %9, align 8
  %93 = getelementptr inbounds %struct.msdos_options_ex, %struct.msdos_options_ex* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  br label %117

98:                                               ; preds = %86
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.msdos_options_ex*, %struct.msdos_options_ex** %9, align 8
  %103 = getelementptr inbounds %struct.msdos_options_ex, %struct.msdos_options_ex* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %101, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %98
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.msdos_options_ex*, %struct.msdos_options_ex** %9, align 8
  %112 = getelementptr inbounds %struct.msdos_options_ex, %struct.msdos_options_ex* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %114)
  br label %116

116:                                              ; preds = %107, %98
  br label %117

117:                                              ; preds = %116, %91
  br label %118

118:                                              ; preds = %117, %79
  %119 = load i8*, i8** %5, align 8
  %120 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %119)
  %121 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @TIMER_START(i32 %122)
  %124 = load i8*, i8** %5, align 8
  %125 = load %struct.msdos_options_ex*, %struct.msdos_options_ex** %9, align 8
  %126 = getelementptr inbounds %struct.msdos_options_ex, %struct.msdos_options_ex* %125, i32 0, i32 0
  %127 = call i32 @mkfs_msdos(i8* %124, i32* null, %struct.TYPE_6__* %126)
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %130

129:                                              ; preds = %118
  br label %203

130:                                              ; preds = %118
  %131 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @TIMER_RESULTS(i32 %132, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i8*, i8** %5, align 8
  %135 = load i32, i32* @O_RDWR, align 4
  %136 = call i32 @open(i8* %134, i32 %135)
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %140 = getelementptr inbounds %struct.vnode, %struct.vnode* %10, i32 0, i32 0
  store %struct.TYPE_5__* %139, %struct.TYPE_5__** %140, align 8
  store i64 0, i64* %14, align 8
  %141 = call %struct.msdosfsmount* @msdosfs_mount(%struct.vnode* %10)
  store %struct.msdosfsmount* %141, %struct.msdosfsmount** %13, align 8
  %142 = icmp eq %struct.msdosfsmount* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %130
  %144 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %130
  %146 = load %struct.msdosfsmount*, %struct.msdosfsmount** %13, align 8
  %147 = call i64 @msdosfs_root(%struct.msdosfsmount* %146, %struct.vnode* %11)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %145
  %152 = load i32, i32* @debug, align 4
  %153 = load i32, i32* @DEBUG_FS_MAKEFS, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load i8*, i8** %5, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = load i32*, i32** %7, align 8
  %160 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %157, i8* %158, i32* %159)
  br label %161

161:                                              ; preds = %156, %151
  %162 = load i8*, i8** %5, align 8
  %163 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %162)
  %164 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @TIMER_START(i32 %165)
  %167 = load i8*, i8** %6, align 8
  %168 = call i32 @VTODE(%struct.vnode* %11)
  %169 = load i32*, i32** %7, align 8
  %170 = load i32*, i32** %7, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %172 = call i32 @msdos_populate_dir(i8* %167, i32 %168, i32* %169, i32* %170, %struct.TYPE_5__* %171)
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %174, label %177

174:                                              ; preds = %161
  %175 = load i8*, i8** %5, align 8
  %176 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %174, %161
  %178 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @TIMER_RESULTS(i32 %179, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %181 = load %struct.msdosfsmount*, %struct.msdosfsmount** %13, align 8
  %182 = call i64 @msdosfs_fsiflush(%struct.msdosfsmount* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %177
  %187 = load i32, i32* @debug, align 4
  %188 = load i32, i32* @DEBUG_FS_MAKEFS, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = call i32 @putchar(i8 signext 10)
  br label %193

193:                                              ; preds = %191, %186
  %194 = load i32, i32* @debug, align 4
  %195 = load i32, i32* @DEBUG_FS_MAKEFS, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = call i32 (...) @bcleanup()
  br label %200

200:                                              ; preds = %198, %193
  %201 = load i8*, i8** %5, align 8
  %202 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %201)
  br label %203

203:                                              ; preds = %200, %129
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MAX(i32, i64) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @TIMER_START(i32) #1

declare dso_local i32 @mkfs_msdos(i8*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @TIMER_RESULTS(i32, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local %struct.msdosfsmount* @msdosfs_mount(%struct.vnode*) #1

declare dso_local i64 @msdosfs_root(%struct.msdosfsmount*, %struct.vnode*) #1

declare dso_local i32 @msdos_populate_dir(i8*, i32, i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @VTODE(%struct.vnode*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @msdosfs_fsiflush(%struct.msdosfsmount*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @bcleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
