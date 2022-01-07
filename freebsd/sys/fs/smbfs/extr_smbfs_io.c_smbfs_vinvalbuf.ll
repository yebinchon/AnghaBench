; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_io.c_smbfs_vinvalbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_io.c_smbfs_vinvalbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.thread = type { i32 }
%struct.smbnode = type { i32 }

@VI_DOOMED = common dso_local global i32 0, align 4
@NFLUSHINPROG = common dso_local global i32 0, align 4
@NFLUSHWANT = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"smfsvinv\00", align 1
@hz = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@OBJPC_SYNC = common dso_local global i32 0, align 4
@V_SAVE = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_vinvalbuf(%struct.vnode* %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.smbnode*, align 8
  %7 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %8 = load %struct.vnode*, %struct.vnode** %4, align 8
  %9 = call %struct.smbnode* @VTOSMB(%struct.vnode* %8)
  store %struct.smbnode* %9, %struct.smbnode** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.vnode*, %struct.vnode** %4, align 8
  %11 = getelementptr inbounds %struct.vnode, %struct.vnode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @VI_DOOMED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %147

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %45, %17
  %19 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %20 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NFLUSHINPROG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %18
  %26 = load i32, i32* @NFLUSHWANT, align 4
  %27 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %28 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %32 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %31, i32 0, i32 0
  %33 = load i64, i64* @PRIBIO, align 8
  %34 = add nsw i64 %33, 2
  %35 = load i32, i32* @hz, align 4
  %36 = mul nsw i32 2, %35
  %37 = call i32 @tsleep(i32* %32, i64 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.thread*, %struct.thread** %5, align 8
  %39 = call i32 @smb_td_intr(%struct.thread* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @EINTR, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %25
  %44 = load i32, i32* @EINTR, align 4
  store i32 %44, i32* %3, align 4
  br label %147

45:                                               ; preds = %25
  br label %18

46:                                               ; preds = %18
  %47 = load i32, i32* @NFLUSHINPROG, align 4
  %48 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %49 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.vnode*, %struct.vnode** %4, align 8
  %53 = getelementptr inbounds %struct.vnode, %struct.vnode* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %74

57:                                               ; preds = %46
  %58 = load %struct.vnode*, %struct.vnode** %4, align 8
  %59 = getelementptr inbounds %struct.vnode, %struct.vnode* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @VM_OBJECT_WLOCK(i32* %61)
  %63 = load %struct.vnode*, %struct.vnode** %4, align 8
  %64 = getelementptr inbounds %struct.vnode, %struct.vnode* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @OBJPC_SYNC, align 4
  %68 = call i32 @vm_object_page_clean(i32* %66, i32 0, i32 0, i32 %67)
  %69 = load %struct.vnode*, %struct.vnode** %4, align 8
  %70 = getelementptr inbounds %struct.vnode, %struct.vnode* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @VM_OBJECT_WUNLOCK(i32* %72)
  br label %74

74:                                               ; preds = %57, %46
  %75 = load %struct.vnode*, %struct.vnode** %4, align 8
  %76 = load i32, i32* @V_SAVE, align 4
  %77 = load i32, i32* @PCATCH, align 4
  %78 = call i32 @vinvalbuf(%struct.vnode* %75, i32 %76, i32 %77, i32 0)
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %115, %74
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %120

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @ERESTART, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @EINTR, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %115

90:                                               ; preds = %86, %82
  %91 = load i32, i32* @NFLUSHINPROG, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %94 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %98 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @NFLUSHWANT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %90
  %104 = load i32, i32* @NFLUSHWANT, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %107 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %111 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %110, i32 0, i32 0
  %112 = call i32 @wakeup(i32* %111)
  br label %113

113:                                              ; preds = %103, %90
  %114 = load i32, i32* @EINTR, align 4
  store i32 %114, i32* %3, align 4
  br label %147

115:                                              ; preds = %86
  %116 = load %struct.vnode*, %struct.vnode** %4, align 8
  %117 = load i32, i32* @V_SAVE, align 4
  %118 = load i32, i32* @PCATCH, align 4
  %119 = call i32 @vinvalbuf(%struct.vnode* %116, i32 %117, i32 %118, i32 0)
  store i32 %119, i32* %7, align 4
  br label %79

120:                                              ; preds = %79
  %121 = load i32, i32* @NMODIFIED, align 4
  %122 = load i32, i32* @NFLUSHINPROG, align 4
  %123 = or i32 %121, %122
  %124 = xor i32 %123, -1
  %125 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %126 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %130 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @NFLUSHWANT, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %120
  %136 = load i32, i32* @NFLUSHWANT, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %139 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %143 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %142, i32 0, i32 0
  %144 = call i32 @wakeup(i32* %143)
  br label %145

145:                                              ; preds = %135, %120
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %145, %113, %43, %16
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.smbnode* @VTOSMB(%struct.vnode*) #1

declare dso_local i32 @tsleep(i32*, i64, i8*, i32) #1

declare dso_local i32 @smb_td_intr(%struct.thread*) #1

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
