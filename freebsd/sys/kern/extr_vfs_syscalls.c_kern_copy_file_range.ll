; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_copy_file_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_copy_file_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64* }
%struct.file = type { i64, i32, i32, %struct.vnode* }
%struct.vnode = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SSIZE_MAX = common dso_local global i64 0, align 8
@cap_read_rights = common dso_local global i32 0, align 4
@cap_write_rights = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@FAPPEND = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_copy_file_range(%struct.thread* %0, i32 %1, i64* %2, i32 %3, i64* %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.file*, align 8
  %16 = alloca %struct.file*, align 8
  %17 = alloca %struct.vnode*, align 8
  %18 = alloca %struct.vnode*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  store %struct.file* null, %struct.file** %16, align 8
  store %struct.file* null, %struct.file** %15, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %21, align 8
  store i64 -1, i64* %23, align 8
  store i32 0, i32* %19, align 4
  store i64 0, i64* %20, align 8
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %19, align 4
  br label %171

29:                                               ; preds = %7
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @SSIZE_MAX, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i64, i64* @SSIZE_MAX, align 8
  store i64 %34, i64* %13, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = load %struct.thread*, %struct.thread** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @fget_read(%struct.thread* %36, i32 %37, i32* @cap_read_rights, %struct.file** %15)
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %19, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %171

42:                                               ; preds = %35
  %43 = load %struct.thread*, %struct.thread** %8, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @fget_write(%struct.thread* %43, i32 %44, i32* @cap_write_rights, %struct.file** %16)
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %19, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %171

49:                                               ; preds = %42
  %50 = load i64*, i64** %10, align 8
  %51 = icmp eq i64* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.file*, %struct.file** %15, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  store i64* %54, i64** %10, align 8
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i64*, i64** %12, align 8
  %57 = icmp eq i64* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.file*, %struct.file** %16, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  store i64* %60, i64** %12, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i64*, i64** %10, align 8
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %23, align 8
  %64 = load i64*, i64** %12, align 8
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %24, align 8
  %66 = load %struct.file*, %struct.file** %15, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 3
  %68 = load %struct.vnode*, %struct.vnode** %67, align 8
  store %struct.vnode* %68, %struct.vnode** %17, align 8
  %69 = load %struct.file*, %struct.file** %16, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 3
  %71 = load %struct.vnode*, %struct.vnode** %70, align 8
  store %struct.vnode* %71, %struct.vnode** %18, align 8
  %72 = load %struct.file*, %struct.file** %16, align 8
  %73 = getelementptr inbounds %struct.file, %struct.file* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @FWRITE, align 4
  %76 = load i32, i32* @FAPPEND, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = load i32, i32* @FWRITE, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %88, label %81

81:                                               ; preds = %61
  %82 = load %struct.file*, %struct.file** %15, align 8
  %83 = getelementptr inbounds %struct.file, %struct.file* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @FREAD, align 4
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81, %61
  %89 = load i32, i32* @EBADF, align 4
  store i32 %89, i32* %19, align 4
  br label %171

90:                                               ; preds = %81
  %91 = load i64, i64* %13, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %171

94:                                               ; preds = %90
  %95 = load %struct.vnode*, %struct.vnode** %17, align 8
  %96 = load %struct.vnode*, %struct.vnode** %18, align 8
  %97 = icmp eq %struct.vnode* %95, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %94
  %99 = load i64, i64* %23, align 8
  %100 = load i64, i64* %24, align 8
  %101 = icmp ule i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i64, i64* %23, align 8
  %104 = load i64, i64* %13, align 8
  %105 = add i64 %103, %104
  %106 = load i64, i64* %24, align 8
  %107 = icmp ugt i64 %105, %106
  br i1 %107, label %118, label %108

108:                                              ; preds = %102, %98
  %109 = load i64, i64* %23, align 8
  %110 = load i64, i64* %24, align 8
  %111 = icmp ugt i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load i64, i64* %24, align 8
  %114 = load i64, i64* %13, align 8
  %115 = add i64 %113, %114
  %116 = load i64, i64* %23, align 8
  %117 = icmp ugt i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %112, %102
  %119 = load i32, i32* @EINVAL, align 4
  store i32 %119, i32* %19, align 4
  br label %171

120:                                              ; preds = %112, %108, %94
  br label %121

121:                                              ; preds = %141, %120
  %122 = load %struct.vnode*, %struct.vnode** %18, align 8
  %123 = load i64*, i64** %12, align 8
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %12, align 8
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %13, align 8
  %128 = add i64 %126, %127
  %129 = call i8* @vn_rangelock_wlock(%struct.vnode* %122, i64 %124, i64 %128)
  store i8* %129, i8** %22, align 8
  %130 = load %struct.vnode*, %struct.vnode** %17, align 8
  %131 = load i64*, i64** %10, align 8
  %132 = load i64, i64* %131, align 8
  %133 = load i64*, i64** %10, align 8
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %13, align 8
  %136 = add i64 %134, %135
  %137 = call i8* @vn_rangelock_tryrlock(%struct.vnode* %130, i64 %132, i64 %136)
  store i8* %137, i8** %21, align 8
  %138 = load i8*, i8** %21, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %121
  br label %156

141:                                              ; preds = %121
  %142 = load %struct.vnode*, %struct.vnode** %18, align 8
  %143 = load i8*, i8** %22, align 8
  %144 = call i32 @vn_rangelock_unlock(%struct.vnode* %142, i8* %143)
  %145 = load %struct.vnode*, %struct.vnode** %17, align 8
  %146 = load i64*, i64** %10, align 8
  %147 = load i64, i64* %146, align 8
  %148 = load i64*, i64** %10, align 8
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %13, align 8
  %151 = add i64 %149, %150
  %152 = call i8* @vn_rangelock_rlock(%struct.vnode* %145, i64 %147, i64 %151)
  store i8* %152, i8** %21, align 8
  %153 = load %struct.vnode*, %struct.vnode** %17, align 8
  %154 = load i8*, i8** %21, align 8
  %155 = call i32 @vn_rangelock_unlock(%struct.vnode* %153, i8* %154)
  br label %121

156:                                              ; preds = %140
  %157 = load i64, i64* %13, align 8
  store i64 %157, i64* %20, align 8
  %158 = load %struct.vnode*, %struct.vnode** %17, align 8
  %159 = load i64*, i64** %10, align 8
  %160 = load %struct.vnode*, %struct.vnode** %18, align 8
  %161 = load i64*, i64** %12, align 8
  %162 = load i32, i32* %14, align 4
  %163 = load %struct.file*, %struct.file** %15, align 8
  %164 = getelementptr inbounds %struct.file, %struct.file* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.file*, %struct.file** %16, align 8
  %167 = getelementptr inbounds %struct.file, %struct.file* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.thread*, %struct.thread** %8, align 8
  %170 = call i32 @vn_copy_file_range(%struct.vnode* %158, i64* %159, %struct.vnode* %160, i64* %161, i64* %20, i32 %162, i32 %165, i32 %168, %struct.thread* %169)
  store i32 %170, i32* %19, align 4
  br label %171

171:                                              ; preds = %156, %118, %93, %88, %48, %41, %27
  %172 = load i8*, i8** %21, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load %struct.vnode*, %struct.vnode** %17, align 8
  %176 = load i8*, i8** %21, align 8
  %177 = call i32 @vn_rangelock_unlock(%struct.vnode* %175, i8* %176)
  br label %178

178:                                              ; preds = %174, %171
  %179 = load i8*, i8** %22, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load %struct.vnode*, %struct.vnode** %18, align 8
  %183 = load i8*, i8** %22, align 8
  %184 = call i32 @vn_rangelock_unlock(%struct.vnode* %182, i8* %183)
  br label %185

185:                                              ; preds = %181, %178
  %186 = load i64, i64* %23, align 8
  %187 = icmp ne i64 %186, -1
  br i1 %187, label %188, label %201

188:                                              ; preds = %185
  %189 = load i32, i32* %19, align 4
  %190 = load i32, i32* @EINTR, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %196, label %192

192:                                              ; preds = %188
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* @ERESTART, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %192, %188
  %197 = load i64, i64* %23, align 8
  %198 = load i64*, i64** %10, align 8
  store i64 %197, i64* %198, align 8
  %199 = load i64, i64* %24, align 8
  %200 = load i64*, i64** %12, align 8
  store i64 %199, i64* %200, align 8
  br label %201

201:                                              ; preds = %196, %192, %185
  %202 = load %struct.file*, %struct.file** %16, align 8
  %203 = icmp ne %struct.file* %202, null
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = load %struct.file*, %struct.file** %16, align 8
  %206 = load %struct.thread*, %struct.thread** %8, align 8
  %207 = call i32 @fdrop(%struct.file* %205, %struct.thread* %206)
  br label %208

208:                                              ; preds = %204, %201
  %209 = load %struct.file*, %struct.file** %15, align 8
  %210 = icmp ne %struct.file* %209, null
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = load %struct.file*, %struct.file** %15, align 8
  %213 = load %struct.thread*, %struct.thread** %8, align 8
  %214 = call i32 @fdrop(%struct.file* %212, %struct.thread* %213)
  br label %215

215:                                              ; preds = %211, %208
  %216 = load i64, i64* %20, align 8
  %217 = load %struct.thread*, %struct.thread** %8, align 8
  %218 = getelementptr inbounds %struct.thread, %struct.thread* %217, i32 0, i32 0
  %219 = load i64*, i64** %218, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 0
  store i64 %216, i64* %220, align 8
  %221 = load i32, i32* %19, align 4
  ret i32 %221
}

declare dso_local i32 @fget_read(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @fget_write(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i8* @vn_rangelock_wlock(%struct.vnode*, i64, i64) #1

declare dso_local i8* @vn_rangelock_tryrlock(%struct.vnode*, i64, i64) #1

declare dso_local i32 @vn_rangelock_unlock(%struct.vnode*, i8*) #1

declare dso_local i8* @vn_rangelock_rlock(%struct.vnode*, i64, i64) #1

declare dso_local i32 @vn_copy_file_range(%struct.vnode*, i64*, %struct.vnode*, i64*, i64*, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
