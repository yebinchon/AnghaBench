; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/evtchn/extr_evtchn_dev.c_evtchn_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/evtchn/extr_evtchn_dev.c_evtchn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i32 }
%struct.per_user_data = type { i32, i32, i32, i32*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@IO_NDELAY = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"evtchw\00", align 1
@EVTCHN_RING_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @evtchn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evtchn_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.per_user_data*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = bitcast %struct.per_user_data** %14 to i8**
  %16 = call i32 @devfs_get_cdevpriv(i8** %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %171

21:                                               ; preds = %3
  %22 = load %struct.uio*, %struct.uio** %6, align 8
  %23 = getelementptr inbounds %struct.uio, %struct.uio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = and i64 %26, -4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %171

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %36, %32
  %39 = load %struct.per_user_data*, %struct.per_user_data** %14, align 8
  %40 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %39, i32 0, i32 2
  %41 = call i32 @sx_xlock(i32* %40)
  br label %42

42:                                               ; preds = %84, %38
  %43 = load i32, i32* @EFBIG, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.per_user_data*, %struct.per_user_data** %14, align 8
  %45 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %166

49:                                               ; preds = %42
  %50 = load %struct.per_user_data*, %struct.per_user_data** %14, align 8
  %51 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %10, align 4
  %53 = load %struct.per_user_data*, %struct.per_user_data** %14, align 8
  %54 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %85

60:                                               ; preds = %49
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @IO_NDELAY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.per_user_data*, %struct.per_user_data** %14, align 8
  %67 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %66, i32 0, i32 2
  %68 = call i32 @sx_xunlock(i32* %67)
  %69 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %69, i32* %4, align 4
  br label %171

70:                                               ; preds = %60
  %71 = load %struct.per_user_data*, %struct.per_user_data** %14, align 8
  %72 = load %struct.per_user_data*, %struct.per_user_data** %14, align 8
  %73 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %72, i32 0, i32 2
  %74 = load i32, i32* @PCATCH, align 4
  %75 = call i32 @sx_sleep(%struct.per_user_data* %71, i32* %73, i32 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @EWOULDBLOCK, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %171

84:                                               ; preds = %78, %70
  br label %42

85:                                               ; preds = %59
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = xor i32 %86, %87
  %89 = load i32, i32* @EVTCHN_RING_SIZE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %85
  %93 = load i32, i32* @EVTCHN_RING_SIZE, align 4
  %94 = zext i32 %93 to i64
  %95 = load i32, i32* %10, align 4
  %96 = call i64 @EVTCHN_RING_MASK(i32 %95)
  %97 = sub i64 %94, %96
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i64 @EVTCHN_RING_MASK(i32 %100)
  %102 = mul i64 %101, 4
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %13, align 4
  br label %111

104:                                              ; preds = %85
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %10, align 4
  %107 = sub i32 %105, %106
  %108 = zext i32 %107 to i64
  %109 = mul i64 %108, 4
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %111

111:                                              ; preds = %104, %92
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ugt i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %128

117:                                              ; preds = %111
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %13, align 4
  %120 = add i32 %118, %119
  %121 = load i32, i32* %9, align 4
  %122 = icmp ugt i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %12, align 4
  %126 = sub i32 %124, %125
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %123, %117
  br label %128

128:                                              ; preds = %127, %115
  %129 = load i32, i32* @EFAULT, align 4
  store i32 %129, i32* %8, align 4
  %130 = call i32 (...) @rmb()
  %131 = load %struct.per_user_data*, %struct.per_user_data** %14, align 8
  %132 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = call i64 @EVTCHN_RING_MASK(i32 %134)
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.uio*, %struct.uio** %6, align 8
  %139 = call i64 @uiomove(i32* %136, i32 %137, %struct.uio* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %128
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %141
  %145 = load %struct.per_user_data*, %struct.per_user_data** %14, align 8
  %146 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.uio*, %struct.uio** %6, align 8
  %151 = call i64 @uiomove(i32* %148, i32 %149, %struct.uio* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %144, %128
  br label %166

154:                                              ; preds = %144, %141
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %13, align 4
  %157 = add i32 %155, %156
  %158 = zext i32 %157 to i64
  %159 = udiv i64 %158, 4
  %160 = load %struct.per_user_data*, %struct.per_user_data** %14, align 8
  %161 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = zext i32 %162 to i64
  %164 = add i64 %163, %159
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %161, align 8
  store i32 0, i32* %8, align 4
  br label %166

166:                                              ; preds = %154, %153, %48
  %167 = load %struct.per_user_data*, %struct.per_user_data** %14, align 8
  %168 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %167, i32 0, i32 2
  %169 = call i32 @sx_xunlock(i32* %168)
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %166, %82, %65, %31, %19
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @sx_sleep(%struct.per_user_data*, i32*, i32, i8*, i32) #1

declare dso_local i64 @EVTCHN_RING_MASK(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @uiomove(i32*, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
