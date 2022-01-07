; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_io.c_fuse_io_invalbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_io.c_fuse_io_invalbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }
%struct.thread = type { i32, %struct.proc* }
%struct.proc = type { i32 }
%struct.fuse_vnode_data = type { i32 }

@VI_DOOMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"fuse_io_invalbuf\00", align 1
@FN_FLUSHINPROG = common dso_local global i32 0, align 4
@MNTK_UNMOUNTF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FN_FLUSHWANT = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"fusevinv\00", align 1
@hz = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@OBJPC_SYNC = common dso_local global i32 0, align 4
@V_SAVE = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_io_invalbuf(%struct.vnode* %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.fuse_vnode_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc*, align 8
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %9 = load %struct.vnode*, %struct.vnode** %4, align 8
  %10 = call %struct.fuse_vnode_data* @VTOFUD(%struct.vnode* %9)
  store %struct.fuse_vnode_data* %10, %struct.fuse_vnode_data** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.vnode*, %struct.vnode** %4, align 8
  %12 = getelementptr inbounds %struct.vnode, %struct.vnode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @VI_DOOMED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %182

18:                                               ; preds = %2
  %19 = load %struct.vnode*, %struct.vnode** %4, align 8
  %20 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %82, %18
  %22 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %6, align 8
  %23 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FN_FLUSHINPROG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %83

28:                                               ; preds = %21
  %29 = load %struct.thread*, %struct.thread** %5, align 8
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 1
  %31 = load %struct.proc*, %struct.proc** %30, align 8
  store %struct.proc* %31, %struct.proc** %8, align 8
  %32 = load %struct.vnode*, %struct.vnode** %4, align 8
  %33 = getelementptr inbounds %struct.vnode, %struct.vnode* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MNTK_UNMOUNTF, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* @EIO, align 4
  store i32 %41, i32* %3, align 4
  br label %182

42:                                               ; preds = %28
  %43 = load i32, i32* @FN_FLUSHWANT, align 4
  %44 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %6, align 8
  %45 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %6, align 8
  %49 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %48, i32 0, i32 0
  %50 = load i64, i64* @PRIBIO, align 8
  %51 = add nsw i64 %50, 2
  %52 = load i32, i32* @hz, align 4
  %53 = mul nsw i32 2, %52
  %54 = call i32 @tsleep(i32* %49, i64 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  store i32 0, i32* %7, align 4
  %55 = load %struct.proc*, %struct.proc** %8, align 8
  %56 = icmp ne %struct.proc* %55, null
  br i1 %56, label %57, label %76

57:                                               ; preds = %42
  %58 = load %struct.proc*, %struct.proc** %8, align 8
  %59 = call i32 @PROC_LOCK(%struct.proc* %58)
  %60 = load %struct.proc*, %struct.proc** %8, align 8
  %61 = getelementptr inbounds %struct.proc, %struct.proc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @SIGNOTEMPTY(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %57
  %66 = load %struct.thread*, %struct.thread** %5, align 8
  %67 = getelementptr inbounds %struct.thread, %struct.thread* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @SIGNOTEMPTY(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65, %57
  %72 = load i32, i32* @EINTR, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %71, %65
  %74 = load %struct.proc*, %struct.proc** %8, align 8
  %75 = call i32 @PROC_UNLOCK(%struct.proc* %74)
  br label %76

76:                                               ; preds = %73, %42
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @EINTR, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @EINTR, align 4
  store i32 %81, i32* %3, align 4
  br label %182

82:                                               ; preds = %76
  br label %21

83:                                               ; preds = %21
  %84 = load i32, i32* @FN_FLUSHINPROG, align 4
  %85 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %6, align 8
  %86 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.vnode*, %struct.vnode** %4, align 8
  %90 = getelementptr inbounds %struct.vnode, %struct.vnode* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %111

94:                                               ; preds = %83
  %95 = load %struct.vnode*, %struct.vnode** %4, align 8
  %96 = getelementptr inbounds %struct.vnode, %struct.vnode* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @VM_OBJECT_WLOCK(i32* %98)
  %100 = load %struct.vnode*, %struct.vnode** %4, align 8
  %101 = getelementptr inbounds %struct.vnode, %struct.vnode* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* @OBJPC_SYNC, align 4
  %105 = call i32 @vm_object_page_clean(i32* %103, i32 0, i32 0, i32 %104)
  %106 = load %struct.vnode*, %struct.vnode** %4, align 8
  %107 = getelementptr inbounds %struct.vnode, %struct.vnode* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @VM_OBJECT_WUNLOCK(i32* %109)
  br label %111

111:                                              ; preds = %94, %83
  %112 = load %struct.vnode*, %struct.vnode** %4, align 8
  %113 = load i32, i32* @V_SAVE, align 4
  %114 = load i32, i32* @PCATCH, align 4
  %115 = call i32 @vinvalbuf(%struct.vnode* %112, i32 %113, i32 %114, i32 0)
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %152, %111
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %157

119:                                              ; preds = %116
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @ERESTART, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @EINTR, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %152

127:                                              ; preds = %123, %119
  %128 = load i32, i32* @FN_FLUSHINPROG, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %6, align 8
  %131 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %6, align 8
  %135 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @FN_FLUSHWANT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %127
  %141 = load i32, i32* @FN_FLUSHWANT, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %6, align 8
  %144 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %6, align 8
  %148 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %147, i32 0, i32 0
  %149 = call i32 @wakeup(i32* %148)
  br label %150

150:                                              ; preds = %140, %127
  %151 = load i32, i32* @EINTR, align 4
  store i32 %151, i32* %3, align 4
  br label %182

152:                                              ; preds = %123
  %153 = load %struct.vnode*, %struct.vnode** %4, align 8
  %154 = load i32, i32* @V_SAVE, align 4
  %155 = load i32, i32* @PCATCH, align 4
  %156 = call i32 @vinvalbuf(%struct.vnode* %153, i32 %154, i32 %155, i32 0)
  store i32 %156, i32* %7, align 4
  br label %116

157:                                              ; preds = %116
  %158 = load i32, i32* @FN_FLUSHINPROG, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %6, align 8
  %161 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 4
  %164 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %6, align 8
  %165 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @FN_FLUSHWANT, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %157
  %171 = load i32, i32* @FN_FLUSHWANT, align 4
  %172 = xor i32 %171, -1
  %173 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %6, align 8
  %174 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, %172
  store i32 %176, i32* %174, align 4
  %177 = load %struct.fuse_vnode_data*, %struct.fuse_vnode_data** %6, align 8
  %178 = getelementptr inbounds %struct.fuse_vnode_data, %struct.fuse_vnode_data* %177, i32 0, i32 0
  %179 = call i32 @wakeup(i32* %178)
  br label %180

180:                                              ; preds = %170, %157
  %181 = load i32, i32* %7, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %180, %150, %80, %40, %17
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local %struct.fuse_vnode_data* @VTOFUD(%struct.vnode*) #1

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @tsleep(i32*, i64, i8*, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i64 @SIGNOTEMPTY(i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32*) #1

declare dso_local i32 @vm_object_page_clean(i32*, i32, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #1

declare dso_local i32 @vinvalbuf(%struct.vnode*, i32, i32, i32) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
