; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vnops.c_fdesc_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vnops.c_fdesc_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_readdir_args = type { i64*, %struct.TYPE_10__*, %struct.uio* }
%struct.TYPE_10__ = type { i32 }
%struct.uio = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.filedesc* }
%struct.filedesc = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.fdescmount = type { i32 }
%struct.dirent = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }

@Froot = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"fdesc_readdir: not dir\00", align 1
@UIO_MX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FD_ROOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@FMNT_LINRDLNKF = common dso_local global i32 0, align 4
@DT_CHR = common dso_local global i32 0, align 4
@DT_LNK = common dso_local global i32 0, align 4
@FD_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_readdir_args*)* @fdesc_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdesc_readdir(%struct.vop_readdir_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_readdir_args*, align 8
  %4 = alloca %struct.fdescmount*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca %struct.filedesc*, align 8
  %7 = alloca %struct.dirent, align 4
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vop_readdir_args* %0, %struct.vop_readdir_args** %3, align 8
  %13 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %13, i32 0, i32 2
  %15 = load %struct.uio*, %struct.uio** %14, align 8
  store %struct.uio* %15, %struct.uio** %5, align 8
  store %struct.dirent* %7, %struct.dirent** %8, align 8
  %16 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = call %struct.TYPE_9__* @VTOFDESC(%struct.TYPE_10__* %18)
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @Froot, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %1
  %27 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %28 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.fdescmount* @VFSTOFDESC(i32 %31)
  store %struct.fdescmount* %32, %struct.fdescmount** %4, align 8
  %33 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %34 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load %struct.vop_readdir_args*, %struct.vop_readdir_args** %3, align 8
  %39 = getelementptr inbounds %struct.vop_readdir_args, %struct.vop_readdir_args* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %26
  %42 = load %struct.uio*, %struct.uio** %5, align 8
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.uio*, %struct.uio** %5, align 8
  %47 = getelementptr inbounds %struct.uio, %struct.uio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %64, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @UIO_MX, align 4
  %56 = srem i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load %struct.uio*, %struct.uio** %5, align 8
  %60 = getelementptr inbounds %struct.uio, %struct.uio* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @UIO_MX, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58, %53, %50, %41
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %2, align 4
  br label %209

66:                                               ; preds = %58
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @UIO_MX, align 4
  %69 = sdiv i32 %67, %68
  store i32 %69, i32* %10, align 4
  %70 = load %struct.uio*, %struct.uio** %5, align 8
  %71 = getelementptr inbounds %struct.uio, %struct.uio* %70, i32 0, i32 2
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.filedesc*, %struct.filedesc** %75, align 8
  store %struct.filedesc* %76, %struct.filedesc** %6, align 8
  store i32 0, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %77, 2
  store i32 %78, i32* %12, align 4
  %79 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %80 = call i32 @FILEDESC_SLOCK(%struct.filedesc* %79)
  br label %81

81:                                               ; preds = %194, %66
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %84 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 2
  %87 = icmp slt i32 %82, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load %struct.uio*, %struct.uio** %5, align 8
  %90 = getelementptr inbounds %struct.uio, %struct.uio* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @UIO_MX, align 4
  %93 = icmp sge i32 %91, %92
  br label %94

94:                                               ; preds = %88, %81
  %95 = phi i1 [ false, %81 ], [ %93, %88 ]
  br i1 %95, label %96, label %199

96:                                               ; preds = %94
  %97 = load %struct.dirent*, %struct.dirent** %8, align 8
  %98 = ptrtoint %struct.dirent* %97 to i32
  %99 = load i32, i32* @UIO_MX, align 4
  %100 = call i32 @bzero(i32 %98, i32 %99)
  %101 = load i32, i32* %10, align 4
  switch i32 %101, label %127 [
    i32 0, label %102
    i32 1, label %102
  ]

102:                                              ; preds = %96, %96
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @FD_ROOT, align 4
  %105 = add nsw i32 %103, %104
  %106 = load %struct.dirent*, %struct.dirent** %8, align 8
  %107 = getelementptr inbounds %struct.dirent, %struct.dirent* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  %110 = load %struct.dirent*, %struct.dirent** %8, align 8
  %111 = getelementptr inbounds %struct.dirent, %struct.dirent* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @UIO_MX, align 4
  %113 = load %struct.dirent*, %struct.dirent** %8, align 8
  %114 = getelementptr inbounds %struct.dirent, %struct.dirent* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.dirent*, %struct.dirent** %8, align 8
  %116 = getelementptr inbounds %struct.dirent, %struct.dirent* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.dirent*, %struct.dirent** %8, align 8
  %119 = getelementptr inbounds %struct.dirent, %struct.dirent* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @bcopy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %120)
  %122 = load i32, i32* @DT_DIR, align 4
  %123 = load %struct.dirent*, %struct.dirent** %8, align 8
  %124 = getelementptr inbounds %struct.dirent, %struct.dirent* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 4
  %125 = load %struct.dirent*, %struct.dirent** %8, align 8
  %126 = call i32 @dirent_terminate(%struct.dirent* %125)
  br label %170

127:                                              ; preds = %96
  %128 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %129 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %128, i32 0, i32 1
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  br label %170

138:                                              ; preds = %127
  %139 = load %struct.dirent*, %struct.dirent** %8, align 8
  %140 = getelementptr inbounds %struct.dirent, %struct.dirent* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @sprintf(i32 %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load %struct.dirent*, %struct.dirent** %8, align 8
  %145 = getelementptr inbounds %struct.dirent, %struct.dirent* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @UIO_MX, align 4
  %147 = load %struct.dirent*, %struct.dirent** %8, align 8
  %148 = getelementptr inbounds %struct.dirent, %struct.dirent* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.fdescmount*, %struct.fdescmount** %4, align 8
  %150 = getelementptr inbounds %struct.fdescmount, %struct.fdescmount* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @FMNT_LINRDLNKF, align 4
  %153 = and i32 %151, %152
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %138
  %156 = load i32, i32* @DT_CHR, align 4
  br label %159

157:                                              ; preds = %138
  %158 = load i32, i32* @DT_LNK, align 4
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi i32 [ %156, %155 ], [ %158, %157 ]
  %161 = load %struct.dirent*, %struct.dirent** %8, align 8
  %162 = getelementptr inbounds %struct.dirent, %struct.dirent* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @FD_DESC, align 4
  %165 = add nsw i32 %163, %164
  %166 = load %struct.dirent*, %struct.dirent** %8, align 8
  %167 = getelementptr inbounds %struct.dirent, %struct.dirent* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  %168 = load %struct.dirent*, %struct.dirent** %8, align 8
  %169 = call i32 @dirent_terminate(%struct.dirent* %168)
  br label %170

170:                                              ; preds = %159, %137, %102
  %171 = load i32, i32* @UIO_MX, align 4
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  %174 = mul nsw i32 %171, %173
  %175 = load %struct.dirent*, %struct.dirent** %8, align 8
  %176 = getelementptr inbounds %struct.dirent, %struct.dirent* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 4
  %177 = load %struct.dirent*, %struct.dirent** %8, align 8
  %178 = getelementptr inbounds %struct.dirent, %struct.dirent* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %194

181:                                              ; preds = %170
  %182 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %183 = call i32 @FILEDESC_SUNLOCK(%struct.filedesc* %182)
  %184 = load %struct.dirent*, %struct.dirent** %8, align 8
  %185 = load i32, i32* @UIO_MX, align 4
  %186 = load %struct.uio*, %struct.uio** %5, align 8
  %187 = call i32 @uiomove(%struct.dirent* %184, i32 %185, %struct.uio* %186)
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %181
  br label %202

191:                                              ; preds = %181
  %192 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %193 = call i32 @FILEDESC_SLOCK(%struct.filedesc* %192)
  br label %194

194:                                              ; preds = %191, %170
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %12, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %12, align 4
  br label %81

199:                                              ; preds = %94
  %200 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %201 = call i32 @FILEDESC_SUNLOCK(%struct.filedesc* %200)
  br label %202

202:                                              ; preds = %199, %190
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* @UIO_MX, align 4
  %205 = mul nsw i32 %203, %204
  %206 = load %struct.uio*, %struct.uio** %5, align 8
  %207 = getelementptr inbounds %struct.uio, %struct.uio* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load i32, i32* %9, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %202, %64
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local %struct.TYPE_9__* @VTOFDESC(%struct.TYPE_10__*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.fdescmount* @VFSTOFDESC(i32) #1

declare dso_local i32 @FILEDESC_SLOCK(%struct.filedesc*) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @bcopy(i8*, i32, i32) #1

declare dso_local i32 @dirent_terminate(%struct.dirent*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @FILEDESC_SUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @uiomove(%struct.dirent*, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
