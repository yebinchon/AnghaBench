; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_kern_proc_filedesc_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_kern_proc_filedesc_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.TYPE_5__*, %struct.vnode*, %struct.vnode* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.vnode* }
%struct.vnode = type { i32 }
%struct.sbuf = type { i32 }
%struct.file = type { i32 }
%struct.filedesc = type { i64, i32, %struct.TYPE_6__*, %struct.vnode*, %struct.vnode*, %struct.vnode* }
%struct.TYPE_6__ = type { %struct.file* }
%struct.export_fd_buf = type { i64, i32, %struct.filedesc*, %struct.sbuf* }

@MA_OWNED = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@KF_FD_TYPE_TRACE = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@KF_FD_TYPE_TEXT = common dso_local global i32 0, align 4
@KF_FD_TYPE_CTTY = common dso_local global i32 0, align 4
@KF_FD_TYPE_CWD = common dso_local global i32 0, align 4
@KF_FD_TYPE_ROOT = common dso_local global i32 0, align 4
@KF_FD_TYPE_JAIL = common dso_local global i32 0, align 4
@cap_no_rights = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_proc_filedesc_out(%struct.proc* %0, %struct.sbuf* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.filedesc*, align 8
  %11 = alloca %struct.export_fd_buf*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.sbuf* %1, %struct.sbuf** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.proc*, %struct.proc** %5, align 8
  %19 = load i32, i32* @MA_OWNED, align 4
  %20 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %18, i32 %19)
  %21 = load %struct.proc*, %struct.proc** %5, align 8
  %22 = getelementptr inbounds %struct.proc, %struct.proc* %21, i32 0, i32 2
  %23 = load %struct.vnode*, %struct.vnode** %22, align 8
  store %struct.vnode* %23, %struct.vnode** %14, align 8
  %24 = load %struct.vnode*, %struct.vnode** %14, align 8
  %25 = icmp ne %struct.vnode* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load %struct.vnode*, %struct.vnode** %14, align 8
  %28 = call i32 @vrefact(%struct.vnode* %27)
  br label %29

29:                                               ; preds = %26, %4
  %30 = load %struct.proc*, %struct.proc** %5, align 8
  %31 = getelementptr inbounds %struct.proc, %struct.proc* %30, i32 0, i32 1
  %32 = load %struct.vnode*, %struct.vnode** %31, align 8
  store %struct.vnode* %32, %struct.vnode** %13, align 8
  %33 = load %struct.vnode*, %struct.vnode** %13, align 8
  %34 = icmp ne %struct.vnode* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.vnode*, %struct.vnode** %13, align 8
  %37 = call i32 @vrefact(%struct.vnode* %36)
  br label %38

38:                                               ; preds = %35, %29
  store %struct.vnode* null, %struct.vnode** %12, align 8
  %39 = load %struct.proc*, %struct.proc** %5, align 8
  %40 = getelementptr inbounds %struct.proc, %struct.proc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = icmp ne %struct.TYPE_5__* %41, null
  br i1 %42, label %43, label %64

43:                                               ; preds = %38
  %44 = load %struct.proc*, %struct.proc** %5, align 8
  %45 = getelementptr inbounds %struct.proc, %struct.proc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %43
  %51 = load %struct.proc*, %struct.proc** %5, align 8
  %52 = getelementptr inbounds %struct.proc, %struct.proc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.vnode*, %struct.vnode** %56, align 8
  store %struct.vnode* %57, %struct.vnode** %12, align 8
  %58 = load %struct.vnode*, %struct.vnode** %12, align 8
  %59 = icmp ne %struct.vnode* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load %struct.vnode*, %struct.vnode** %12, align 8
  %62 = call i32 @vrefact(%struct.vnode* %61)
  br label %63

63:                                               ; preds = %60, %50
  br label %64

64:                                               ; preds = %63, %43, %38
  %65 = load %struct.proc*, %struct.proc** %5, align 8
  %66 = call %struct.filedesc* @fdhold(%struct.proc* %65)
  store %struct.filedesc* %66, %struct.filedesc** %10, align 8
  %67 = load %struct.proc*, %struct.proc** %5, align 8
  %68 = call i32 @PROC_UNLOCK(%struct.proc* %67)
  %69 = load i32, i32* @M_TEMP, align 4
  %70 = load i32, i32* @M_WAITOK, align 4
  %71 = call %struct.export_fd_buf* @malloc(i32 32, i32 %69, i32 %70)
  store %struct.export_fd_buf* %71, %struct.export_fd_buf** %11, align 8
  %72 = load %struct.export_fd_buf*, %struct.export_fd_buf** %11, align 8
  %73 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %72, i32 0, i32 2
  store %struct.filedesc* null, %struct.filedesc** %73, align 8
  %74 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %75 = load %struct.export_fd_buf*, %struct.export_fd_buf** %11, align 8
  %76 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %75, i32 0, i32 3
  store %struct.sbuf* %74, %struct.sbuf** %76, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.export_fd_buf*, %struct.export_fd_buf** %11, align 8
  %79 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.export_fd_buf*, %struct.export_fd_buf** %11, align 8
  %82 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.vnode*, %struct.vnode** %14, align 8
  %84 = icmp ne %struct.vnode* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %64
  %86 = load %struct.vnode*, %struct.vnode** %14, align 8
  %87 = load i32, i32* @KF_FD_TYPE_TRACE, align 4
  %88 = load i32, i32* @FREAD, align 4
  %89 = load i32, i32* @FWRITE, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.export_fd_buf*, %struct.export_fd_buf** %11, align 8
  %92 = call i32 @export_vnode_to_sb(%struct.vnode* %86, i32 %87, i32 %90, %struct.export_fd_buf* %91)
  br label %93

93:                                               ; preds = %85, %64
  %94 = load %struct.vnode*, %struct.vnode** %13, align 8
  %95 = icmp ne %struct.vnode* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.vnode*, %struct.vnode** %13, align 8
  %98 = load i32, i32* @KF_FD_TYPE_TEXT, align 4
  %99 = load i32, i32* @FREAD, align 4
  %100 = load %struct.export_fd_buf*, %struct.export_fd_buf** %11, align 8
  %101 = call i32 @export_vnode_to_sb(%struct.vnode* %97, i32 %98, i32 %99, %struct.export_fd_buf* %100)
  br label %102

102:                                              ; preds = %96, %93
  %103 = load %struct.vnode*, %struct.vnode** %12, align 8
  %104 = icmp ne %struct.vnode* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load %struct.vnode*, %struct.vnode** %12, align 8
  %107 = load i32, i32* @KF_FD_TYPE_CTTY, align 4
  %108 = load i32, i32* @FREAD, align 4
  %109 = load i32, i32* @FWRITE, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.export_fd_buf*, %struct.export_fd_buf** %11, align 8
  %112 = call i32 @export_vnode_to_sb(%struct.vnode* %106, i32 %107, i32 %110, %struct.export_fd_buf* %111)
  br label %113

113:                                              ; preds = %105, %102
  store i32 0, i32* %15, align 4
  %114 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %115 = icmp eq %struct.filedesc* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %221

117:                                              ; preds = %113
  %118 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %119 = load %struct.export_fd_buf*, %struct.export_fd_buf** %11, align 8
  %120 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %119, i32 0, i32 2
  store %struct.filedesc* %118, %struct.filedesc** %120, align 8
  %121 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %122 = call i32 @FILEDESC_SLOCK(%struct.filedesc* %121)
  %123 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %124 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %123, i32 0, i32 5
  %125 = load %struct.vnode*, %struct.vnode** %124, align 8
  %126 = icmp ne %struct.vnode* %125, null
  br i1 %126, label %127, label %139

127:                                              ; preds = %117
  %128 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %129 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %128, i32 0, i32 5
  %130 = load %struct.vnode*, %struct.vnode** %129, align 8
  %131 = call i32 @vrefact(%struct.vnode* %130)
  %132 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %133 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %132, i32 0, i32 5
  %134 = load %struct.vnode*, %struct.vnode** %133, align 8
  %135 = load i32, i32* @KF_FD_TYPE_CWD, align 4
  %136 = load i32, i32* @FREAD, align 4
  %137 = load %struct.export_fd_buf*, %struct.export_fd_buf** %11, align 8
  %138 = call i32 @export_vnode_to_sb(%struct.vnode* %134, i32 %135, i32 %136, %struct.export_fd_buf* %137)
  br label %139

139:                                              ; preds = %127, %117
  %140 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %141 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %140, i32 0, i32 4
  %142 = load %struct.vnode*, %struct.vnode** %141, align 8
  %143 = icmp ne %struct.vnode* %142, null
  br i1 %143, label %144, label %156

144:                                              ; preds = %139
  %145 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %146 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %145, i32 0, i32 4
  %147 = load %struct.vnode*, %struct.vnode** %146, align 8
  %148 = call i32 @vrefact(%struct.vnode* %147)
  %149 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %150 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %149, i32 0, i32 4
  %151 = load %struct.vnode*, %struct.vnode** %150, align 8
  %152 = load i32, i32* @KF_FD_TYPE_ROOT, align 4
  %153 = load i32, i32* @FREAD, align 4
  %154 = load %struct.export_fd_buf*, %struct.export_fd_buf** %11, align 8
  %155 = call i32 @export_vnode_to_sb(%struct.vnode* %151, i32 %152, i32 %153, %struct.export_fd_buf* %154)
  br label %156

156:                                              ; preds = %144, %139
  %157 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %158 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %157, i32 0, i32 3
  %159 = load %struct.vnode*, %struct.vnode** %158, align 8
  %160 = icmp ne %struct.vnode* %159, null
  br i1 %160, label %161, label %173

161:                                              ; preds = %156
  %162 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %163 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %162, i32 0, i32 3
  %164 = load %struct.vnode*, %struct.vnode** %163, align 8
  %165 = call i32 @vrefact(%struct.vnode* %164)
  %166 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %167 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %166, i32 0, i32 3
  %168 = load %struct.vnode*, %struct.vnode** %167, align 8
  %169 = load i32, i32* @KF_FD_TYPE_JAIL, align 4
  %170 = load i32, i32* @FREAD, align 4
  %171 = load %struct.export_fd_buf*, %struct.export_fd_buf** %11, align 8
  %172 = call i32 @export_vnode_to_sb(%struct.vnode* %168, i32 %169, i32 %170, %struct.export_fd_buf* %171)
  br label %173

173:                                              ; preds = %161, %156
  store i32 0, i32* %16, align 4
  br label %174

174:                                              ; preds = %213, %173
  %175 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %176 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp sgt i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load i32, i32* %16, align 4
  %181 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %182 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = icmp sle i32 %180, %183
  br label %185

185:                                              ; preds = %179, %174
  %186 = phi i1 [ false, %174 ], [ %184, %179 ]
  br i1 %186, label %187, label %216

187:                                              ; preds = %185
  %188 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %189 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %188, i32 0, i32 2
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = load i32, i32* %16, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load %struct.file*, %struct.file** %194, align 8
  store %struct.file* %195, %struct.file** %9, align 8
  %196 = icmp eq %struct.file* %195, null
  br i1 %196, label %197, label %198

197:                                              ; preds = %187
  br label %213

198:                                              ; preds = %187
  %199 = load i32, i32* @cap_no_rights, align 4
  store i32 %199, i32* %17, align 4
  %200 = load %struct.file*, %struct.file** %9, align 8
  %201 = load i32, i32* %16, align 4
  %202 = load %struct.export_fd_buf*, %struct.export_fd_buf** %11, align 8
  %203 = call i32 @export_file_to_sb(%struct.file* %200, i32 %201, i32* %17, %struct.export_fd_buf* %202)
  store i32 %203, i32* %15, align 4
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %198
  %207 = load %struct.export_fd_buf*, %struct.export_fd_buf** %11, align 8
  %208 = getelementptr inbounds %struct.export_fd_buf, %struct.export_fd_buf* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206, %198
  br label %216

212:                                              ; preds = %206
  br label %213

213:                                              ; preds = %212, %197
  %214 = load i32, i32* %16, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %16, align 4
  br label %174

216:                                              ; preds = %211, %185
  %217 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %218 = call i32 @FILEDESC_SUNLOCK(%struct.filedesc* %217)
  %219 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %220 = call i32 @fddrop(%struct.filedesc* %219)
  br label %221

221:                                              ; preds = %216, %116
  %222 = load %struct.export_fd_buf*, %struct.export_fd_buf** %11, align 8
  %223 = load i32, i32* @M_TEMP, align 4
  %224 = call i32 @free(%struct.export_fd_buf* %222, i32 %223)
  %225 = load i32, i32* %15, align 4
  ret i32 %225
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @vrefact(%struct.vnode*) #1

declare dso_local %struct.filedesc* @fdhold(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local %struct.export_fd_buf* @malloc(i32, i32, i32) #1

declare dso_local i32 @export_vnode_to_sb(%struct.vnode*, i32, i32, %struct.export_fd_buf*) #1

declare dso_local i32 @FILEDESC_SLOCK(%struct.filedesc*) #1

declare dso_local i32 @export_file_to_sb(%struct.file*, i32, i32*, %struct.export_fd_buf*) #1

declare dso_local i32 @FILEDESC_SUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @fddrop(%struct.filedesc*) #1

declare dso_local i32 @free(%struct.export_fd_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
