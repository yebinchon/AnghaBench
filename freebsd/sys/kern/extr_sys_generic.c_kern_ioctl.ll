; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_kern_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sys_generic.c_kern_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.filedesc* }
%struct.filedesc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.file = type { i32 }

@LA_UNLOCKED = common dso_local global i32 0, align 4
@cap_ioctl_rights = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@UF_EXCLOSE = common dso_local global i32 0, align 4
@FNONBLOCK = common dso_local global i32 0, align 4
@FASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_ioctl(%struct.thread* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.filedesc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @AUDIT_ARG_FD(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @AUDIT_ARG_CMD(i32 %16)
  %18 = load %struct.thread*, %struct.thread** %5, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.filedesc*, %struct.filedesc** %21, align 8
  store %struct.filedesc* %22, %struct.filedesc** %10, align 8
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %27 [
    i32 130, label %24
    i32 132, label %24
  ]

24:                                               ; preds = %4, %4
  %25 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %26 = call i32 @FILEDESC_XLOCK(%struct.filedesc* %25)
  store i32 128, i32* %13, align 4
  br label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @LA_UNLOCKED, align 4
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = load %struct.thread*, %struct.thread** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @fget(%struct.thread* %30, i32 %31, i32* @cap_ioctl_rights, %struct.file** %9)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store %struct.file* null, %struct.file** %9, align 8
  br label %115

36:                                               ; preds = %29
  %37 = load %struct.file*, %struct.file** %9, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FREAD, align 4
  %41 = load i32, i32* @FWRITE, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @EBADF, align 4
  store i32 %46, i32* %11, align 4
  br label %115

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  switch i32 %48, label %106 [
    i32 130, label %49
    i32 132, label %61
    i32 131, label %72
    i32 133, label %89
  ]

49:                                               ; preds = %47
  %50 = load i32, i32* @UF_EXCLOSE, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %53 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %51
  store i32 %60, i32* %58, align 4
  br label %115

61:                                               ; preds = %47
  %62 = load i32, i32* @UF_EXCLOSE, align 4
  %63 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %64 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %62
  store i32 %71, i32* %69, align 4
  br label %115

72:                                               ; preds = %47
  %73 = load i8*, i8** %8, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.file*, %struct.file** %9, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 0
  %80 = load i32, i32* @FNONBLOCK, align 4
  %81 = call i32 @atomic_set_int(i32* %79, i32 %80)
  br label %87

82:                                               ; preds = %72
  %83 = load %struct.file*, %struct.file** %9, align 8
  %84 = getelementptr inbounds %struct.file, %struct.file* %83, i32 0, i32 0
  %85 = load i32, i32* @FNONBLOCK, align 4
  %86 = call i32 @atomic_clear_int(i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = bitcast i32* %12 to i8*
  store i8* %88, i8** %8, align 8
  br label %106

89:                                               ; preds = %47
  %90 = load i8*, i8** %8, align 8
  %91 = bitcast i8* %90 to i32*
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.file*, %struct.file** %9, align 8
  %96 = getelementptr inbounds %struct.file, %struct.file* %95, i32 0, i32 0
  %97 = load i32, i32* @FASYNC, align 4
  %98 = call i32 @atomic_set_int(i32* %96, i32 %97)
  br label %104

99:                                               ; preds = %89
  %100 = load %struct.file*, %struct.file** %9, align 8
  %101 = getelementptr inbounds %struct.file, %struct.file* %100, i32 0, i32 0
  %102 = load i32, i32* @FASYNC, align 4
  %103 = call i32 @atomic_clear_int(i32* %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %94
  %105 = bitcast i32* %12 to i8*
  store i8* %105, i8** %8, align 8
  br label %106

106:                                              ; preds = %47, %104, %87
  %107 = load %struct.file*, %struct.file** %9, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i8*, i8** %8, align 8
  %110 = load %struct.thread*, %struct.thread** %5, align 8
  %111 = getelementptr inbounds %struct.thread, %struct.thread* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.thread*, %struct.thread** %5, align 8
  %114 = call i32 @fo_ioctl(%struct.file* %107, i32 %108, i8* %109, i32 %112, %struct.thread* %113)
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %106, %61, %49, %45, %35
  %116 = load i32, i32* %13, align 4
  switch i32 %116, label %120 [
    i32 128, label %117
  ]

117:                                              ; preds = %115
  %118 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %119 = call i32 @FILEDESC_XUNLOCK(%struct.filedesc* %118)
  br label %123

120:                                              ; preds = %115
  %121 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %122 = call i32 @FILEDESC_UNLOCK_ASSERT(%struct.filedesc* %121)
  br label %123

123:                                              ; preds = %120, %117
  %124 = load %struct.file*, %struct.file** %9, align 8
  %125 = icmp ne %struct.file* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load %struct.file*, %struct.file** %9, align 8
  %128 = load %struct.thread*, %struct.thread** %5, align 8
  %129 = call i32 @fdrop(%struct.file* %127, %struct.thread* %128)
  br label %130

130:                                              ; preds = %126, %123
  %131 = load i32, i32* %11, align 4
  ret i32 %131
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @AUDIT_ARG_CMD(i32) #1

declare dso_local i32 @FILEDESC_XLOCK(%struct.filedesc*) #1

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @atomic_set_int(i32*, i32) #1

declare dso_local i32 @atomic_clear_int(i32*, i32) #1

declare dso_local i32 @fo_ioctl(%struct.file*, i32, i8*, i32, %struct.thread*) #1

declare dso_local i32 @FILEDESC_XUNLOCK(%struct.filedesc*) #1

declare dso_local i32 @FILEDESC_UNLOCK_ASSERT(%struct.filedesc*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
