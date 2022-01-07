; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_parse_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_parse_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mntarg = type { i32 }

@M_TEMP = common dso_local global i32 0, align 4
@root_mount_mddev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"md#\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Trying to mount root from %s:%s [%s]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ERRMSGL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"unknown file system\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@root_mount_timeout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"fstype\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"fspath\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"errmsg\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@MNT_ROOTFS = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [73 x i8] c"Mounting from %s:%s failed with error %d; retrying for %d more second%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"rmretry\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Mounting from %s:%s failed with error %d\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@EDOOFUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @parse_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mount(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mntarg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %13 = load i8**, i8*** %3, align 8
  %14 = call i32 @parse_token(i8** %13, i8** %9)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %2, align 4
  br label %196

19:                                               ; preds = %1
  %20 = load i8*, i8** %9, align 8
  store i8* %20, i8** %7, align 8
  %21 = call i32 @parse_skipto(i8** %9, i8 signext 58)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @M_TEMP, align 4
  %27 = call i32 @free(i8* %25, i32 %26)
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %2, align 4
  br label %196

29:                                               ; preds = %19
  %30 = call i32 @parse_poke(i8** %9, i8 signext 0)
  %31 = call i32 @parse_advance(i8** %9)
  %32 = load i8*, i8** %9, align 8
  store i8* %32, i8** %6, align 8
  %33 = load i32, i32* @root_mount_mddev, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i8*, i8** %6, align 8
  %37 = call i8* @strstr(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @root_mount_mddev, align 4
  %42 = add nsw i32 48, %41
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  store i8 %43, i8* %45, align 1
  br label %46

46:                                               ; preds = %40, %35
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i8**, i8*** %3, align 8
  %49 = call i32 @parse_token(i8** %48, i8** %9)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i8*, i8** %9, align 8
  br label %55

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i8* [ %53, %52 ], [ null, %54 ]
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i8*, i8** %8, align 8
  br label %64

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i8* [ %62, %61 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %63 ]
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %58, i8* %65)
  %67 = load i32, i32* @ERRMSGL, align 4
  %68 = load i32, i32* @M_TEMP, align 4
  %69 = load i32, i32* @M_WAITOK, align 4
  %70 = load i32, i32* @M_ZERO, align 4
  %71 = or i32 %69, %70
  %72 = call i8* @malloc(i32 %67, i32 %68, i32 %71)
  store i8* %72, i8** %4, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call i32* @vfs_byname(i8* %73)
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %64
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* @ERRMSGL, align 4
  %79 = call i32 @strlcpy(i8* %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @ENOENT, align 4
  store i32 %80, i32* %11, align 4
  br label %156

81:                                               ; preds = %64
  %82 = load i8*, i8** %7, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @vfs_mountroot_wait_if_neccessary(i8* %82, i8* %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %156

88:                                               ; preds = %81
  %89 = load i32, i32* @hz, align 4
  %90 = sdiv i32 %89, 10
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* @root_mount_timeout, align 4
  %92 = load i32, i32* @hz, align 4
  %93 = mul nsw i32 %91, %92
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %149, %88
  store %struct.mntarg* null, %struct.mntarg** %5, align 8
  %95 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = call %struct.mntarg* @mount_arg(%struct.mntarg* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %96, i32 -1)
  store %struct.mntarg* %97, %struct.mntarg** %5, align 8
  %98 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %99 = call %struct.mntarg* @mount_arg(%struct.mntarg* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 -1)
  store %struct.mntarg* %99, %struct.mntarg** %5, align 8
  %100 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = call %struct.mntarg* @mount_arg(%struct.mntarg* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %101, i32 -1)
  store %struct.mntarg* %102, %struct.mntarg** %5, align 8
  %103 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = load i32, i32* @ERRMSGL, align 4
  %106 = call %struct.mntarg* @mount_arg(%struct.mntarg* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %104, i32 %105)
  store %struct.mntarg* %106, %struct.mntarg** %5, align 8
  %107 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %108 = call %struct.mntarg* @mount_arg(%struct.mntarg* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* null, i32 0)
  store %struct.mntarg* %108, %struct.mntarg** %5, align 8
  %109 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = call %struct.mntarg* @parse_mountroot_options(%struct.mntarg* %109, i8* %110)
  store %struct.mntarg* %111, %struct.mntarg** %5, align 8
  %112 = load %struct.mntarg*, %struct.mntarg** %5, align 8
  %113 = load i32, i32* @MNT_ROOTFS, align 4
  %114 = call i32 @kernel_mount(%struct.mntarg* %112, i32 %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %94
  %118 = load i32, i32* %12, align 4
  %119 = icmp sle i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117, %94
  br label %155

121:                                              ; preds = %117
  %122 = load i32, i32* @root_mount_timeout, align 4
  %123 = load i32, i32* @hz, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load i32, i32* %12, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %135, label %127

127:                                              ; preds = %121
  %128 = load i64, i64* @bootverbose, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %149

130:                                              ; preds = %127
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @hz, align 4
  %133 = srem i32 %131, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %130, %121
  %136 = load i8*, i8** %7, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* @hz, align 4
  %141 = sdiv i32 %139, %140
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* @hz, align 4
  %144 = sdiv i32 %142, %143
  %145 = icmp sgt i32 %144, 1
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.10, i64 0, i64 0), i8* %136, i8* %137, i32 %138, i32 %141, i8* %147)
  br label %149

149:                                              ; preds = %135, %130, %127
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @pause(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %12, align 4
  %154 = sub nsw i32 %153, %152
  store i32 %154, i32* %12, align 4
  br label %94

155:                                              ; preds = %120
  br label %156

156:                                              ; preds = %155, %87, %76
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %156
  %160 = load i8*, i8** %7, align 8
  %161 = load i8*, i8** %6, align 8
  %162 = load i32, i32* %11, align 4
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i8* %160, i8* %161, i32 %162)
  %164 = load i8*, i8** %4, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %159
  %170 = load i8*, i8** %4, align 8
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %170)
  br label %172

172:                                              ; preds = %169, %159
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %156
  %175 = load i8*, i8** %7, align 8
  %176 = load i32, i32* @M_TEMP, align 4
  %177 = call i32 @free(i8* %175, i32 %176)
  %178 = load i8*, i8** %4, align 8
  %179 = load i32, i32* @M_TEMP, align 4
  %180 = call i32 @free(i8* %178, i32 %179)
  %181 = load i8*, i8** %8, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %187

183:                                              ; preds = %174
  %184 = load i8*, i8** %8, align 8
  %185 = load i32, i32* @M_TEMP, align 4
  %186 = call i32 @free(i8* %184, i32 %185)
  br label %187

187:                                              ; preds = %183, %174
  %188 = load i32, i32* %11, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = load i32, i32* @EDOOFUS, align 4
  br label %194

192:                                              ; preds = %187
  %193 = load i32, i32* %11, align 4
  br label %194

194:                                              ; preds = %192, %190
  %195 = phi i32 [ %191, %190 ], [ %193, %192 ]
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %194, %24, %17
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @parse_token(i8**, i8**) #1

declare dso_local i32 @parse_skipto(i8**, i8 signext) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @parse_poke(i8**, i8 signext) #1

declare dso_local i32 @parse_advance(i8**) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32* @vfs_byname(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @vfs_mountroot_wait_if_neccessary(i8*, i8*) #1

declare dso_local %struct.mntarg* @mount_arg(%struct.mntarg*, i8*, i8*, i32) #1

declare dso_local %struct.mntarg* @parse_mountroot_options(%struct.mntarg*, i8*) #1

declare dso_local i32 @kernel_mount(%struct.mntarg*, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
