; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_ffs.c_ffs_create_image.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_ffs.c_ffs_create_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i32, i64, i64, i8*, i64 }
%struct.fs = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }

@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Can't open `%s' for writing\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"sparse option disabled.\00", align 1
@debug = common dso_local global i32 0, align 4
@DEBUG_FS_CREATE_IMAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"zero-ing image `%s', %lld sectors, using %d byte chunks\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"can't seek\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"zeroing image, %lld bytes to go\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"calling mkfs(\22%s\22, ...)\0A\00", align 1
@stampst = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@start_time = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"mkfs returned %p; fs_time %s\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"fs totals: nbfree %lld, nffree %lld, nifree %lld, ndir %lld\0A\00", align 1
@UFS_ROOTINO = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [57 x i8] c"Image file `%s' has %lld free inodes; %lld are required.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_8__*)* @ffs_create_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffs_create_image(i8* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.fs*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %14 = load i32, i32* @O_RDWR, align 4
  %15 = load i32, i32* @O_CREAT, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %11, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @O_TRUNC, align 4
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %29, %2
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @open(i8* %34, i32 %35, i32 438)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = icmp eq i32 %36, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %41)
  store i32 -1, i32* %3, align 4
  br label %219

43:                                               ; preds = %33
  store i32 8192, i32* %9, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %10, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %43
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @ftruncate(i32 %54, i64 %55)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 5
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %51
  br label %63

63:                                               ; preds = %62, %43
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i64 0, i64* %10, align 8
  store i8* null, i8** %7, align 8
  br label %82

69:                                               ; preds = %63
  %70 = load i32, i32* @debug, align 4
  %71 = load i32, i32* @DEBUG_FS_CREATE_IMAGE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i8*, i8** %4, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %75, i64 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %69
  %80 = load i32, i32* %9, align 4
  %81 = call i8* @ecalloc(i32 1, i32 %80)
  store i8* %81, i8** %7, align 8
  br label %82

82:                                               ; preds = %79, %68
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %82
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @SEEK_SET, align 4
  %95 = call i32 @lseek(i32 %90, i64 %93, i32 %94)
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %101

97:                                               ; preds = %87
  %98 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @free(i8* %99)
  store i32 -1, i32* %3, align 4
  br label %219

101:                                              ; preds = %87
  br label %102

102:                                              ; preds = %101, %82
  br label %103

103:                                              ; preds = %122, %102
  %104 = load i64, i64* %10, align 8
  %105 = icmp sgt i64 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %103
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @MIN(i32 %111, i64 %112)
  %114 = call i32 @write(i32 %109, i8* %110, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %122

117:                                              ; preds = %106
  %118 = load i64, i64* %10, align 8
  %119 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %118)
  %120 = load i8*, i8** %7, align 8
  %121 = call i32 @free(i8* %120)
  store i32 -1, i32* %3, align 4
  br label %219

122:                                              ; preds = %106
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* %10, align 8
  %126 = sub nsw i64 %125, %124
  store i64 %126, i64* %10, align 8
  br label %103

127:                                              ; preds = %103
  %128 = load i8*, i8** %7, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i8*, i8** %7, align 8
  %132 = call i32 @free(i8* %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i32, i32* @debug, align 4
  %135 = load i32, i32* @DEBUG_FS_CREATE_IMAGE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i8*, i8** %4, align 8
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %138, %133
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @stampst, i32 0, i32 0), align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @stampst, i32 0, i32 1), align 8
  store i64 %145, i64* %12, align 8
  br label %148

146:                                              ; preds = %141
  %147 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @start_time, i32 0, i32 0), align 8
  store i64 %147, i64* %12, align 8
  br label %148

148:                                              ; preds = %146, %144
  %149 = load i64, i64* %12, align 8
  %150 = call i32 @srandom(i64 %149)
  %151 = load i8*, i8** %4, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %153 = load i64, i64* %12, align 8
  %154 = call %struct.fs* @ffs_mkfs(i8* %151, %struct.TYPE_8__* %152, i64 %153)
  store %struct.fs* %154, %struct.fs** %6, align 8
  %155 = load %struct.fs*, %struct.fs** %6, align 8
  %156 = bitcast %struct.fs* %155 to i8*
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 4
  store i8* %156, i8** %158, align 8
  %159 = load i32, i32* @debug, align 4
  %160 = load i32, i32* @DEBUG_FS_CREATE_IMAGE, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %192

163:                                              ; preds = %148
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 4
  %166 = load i8*, i8** %165, align 8
  %167 = bitcast i8* %166 to %struct.fs*
  %168 = getelementptr inbounds %struct.fs, %struct.fs* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %13, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 4
  %172 = load i8*, i8** %171, align 8
  %173 = call i8* @ctime(i64* %13)
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %172, i8* %173)
  %175 = load %struct.fs*, %struct.fs** %6, align 8
  %176 = getelementptr inbounds %struct.fs, %struct.fs* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.fs*, %struct.fs** %6, align 8
  %180 = getelementptr inbounds %struct.fs, %struct.fs* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.fs*, %struct.fs** %6, align 8
  %184 = getelementptr inbounds %struct.fs, %struct.fs* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.fs*, %struct.fs** %6, align 8
  %188 = getelementptr inbounds %struct.fs, %struct.fs* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i64 %178, i64 %182, i64 %186, i64 %190)
  br label %192

192:                                              ; preds = %163, %148
  %193 = load %struct.fs*, %struct.fs** %6, align 8
  %194 = getelementptr inbounds %struct.fs, %struct.fs* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @UFS_ROOTINO, align 8
  %198 = add nsw i64 %196, %197
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = icmp slt i64 %198, %201
  br i1 %202, label %203, label %215

203:                                              ; preds = %192
  %204 = load i8*, i8** %4, align 8
  %205 = load %struct.fs*, %struct.fs** %6, align 8
  %206 = getelementptr inbounds %struct.fs, %struct.fs* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @UFS_ROOTINO, align 8
  %210 = add nsw i64 %208, %209
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @warnx(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i8* %204, i64 %210, i64 %213)
  store i32 -1, i32* %3, align 4
  br label %219

215:                                              ; preds = %192
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  store i32 %218, i32* %3, align 4
  br label %219

219:                                              ; preds = %215, %203, %117, %97, %40
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @ftruncate(i32, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ecalloc(i32, i32) #1

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @srandom(i64) #1

declare dso_local %struct.fs* @ffs_mkfs(i8*, %struct.TYPE_8__*, i64) #1

declare dso_local i8* @ctime(i64*) #1

declare dso_local i32 @warnx(i8*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
