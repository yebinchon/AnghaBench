; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_rw_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_rw_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.umtx_q* }
%struct.umtx_q = type { i32 }
%struct.urwlock = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@TYPE_RWLOCK = common dso_local global i32 0, align 4
@URWLOCK_WRITE_OWNER = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@URWLOCK_PREFER_READER = common dso_local global i32 0, align 4
@URWLOCK_WRITE_WAITERS = common dso_local global i32 0, align 4
@UMTX_EXCLUSIVE_QUEUE = common dso_local global i32 0, align 4
@URWLOCK_READ_WAITERS = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@UMTX_SHARED_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.urwlock*)* @do_rw_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_rw_unlock(%struct.thread* %0, %struct.urwlock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.urwlock*, align 8
  %6 = alloca %struct.umtx_q*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.urwlock* %1, %struct.urwlock** %5, align 8
  %14 = load %struct.thread*, %struct.thread** %4, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load %struct.umtx_q*, %struct.umtx_q** %15, align 8
  store %struct.umtx_q* %16, %struct.umtx_q** %6, align 8
  %17 = load %struct.urwlock*, %struct.urwlock** %5, align 8
  %18 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %17, i32 0, i32 1
  %19 = call i32 @fueword32(i32* %18, i32* %7)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @EFAULT, align 4
  store i32 %23, i32* %3, align 4
  br label %189

24:                                               ; preds = %2
  %25 = load %struct.urwlock*, %struct.urwlock** %5, align 8
  %26 = load i32, i32* @TYPE_RWLOCK, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @GET_SHARE(i32 %27)
  %29 = load %struct.umtx_q*, %struct.umtx_q** %6, align 8
  %30 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %29, i32 0, i32 0
  %31 = call i32 @umtx_key_get(%struct.urwlock* %25, i32 %26, i32 %28, i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %3, align 4
  br label %189

36:                                               ; preds = %24
  %37 = load %struct.urwlock*, %struct.urwlock** %5, align 8
  %38 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %37, i32 0, i32 0
  %39 = call i32 @fueword32(i32* %38, i32* %8)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @EFAULT, align 4
  store i32 %43, i32* %10, align 4
  br label %184

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @URWLOCK_WRITE_OWNER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %84

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %82, %49
  %51 = load %struct.urwlock*, %struct.urwlock** %5, align 8
  %52 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %51, i32 0, i32 0
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @URWLOCK_WRITE_OWNER, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = call i32 @casueword32(i32* %52, i32 %53, i32* %9, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @EFAULT, align 4
  store i32 %62, i32* %10, align 4
  br label %184

63:                                               ; preds = %50
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @URWLOCK_WRITE_OWNER, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @EPERM, align 4
  store i32 %73, i32* %10, align 4
  br label %184

74:                                               ; preds = %66
  %75 = load %struct.thread*, %struct.thread** %4, align 8
  %76 = call i32 @umtxq_check_susp(%struct.thread* %75, i32 1)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %184

80:                                               ; preds = %74
  br label %82

81:                                               ; preds = %63
  br label %83

82:                                               ; preds = %80
  br label %50

83:                                               ; preds = %81
  br label %123

84:                                               ; preds = %44
  %85 = load i32, i32* %8, align 4
  %86 = call i64 @URWLOCK_READER_COUNT(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %120

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %118, %88
  %90 = load %struct.urwlock*, %struct.urwlock** %5, align 8
  %91 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %90, i32 0, i32 0
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %93, 1
  %95 = call i32 @casueword32(i32* %91, i32 %92, i32* %9, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* @EFAULT, align 4
  store i32 %99, i32* %10, align 4
  br label %184

100:                                              ; preds = %89
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i64 @URWLOCK_READER_COUNT(i32 %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* @EPERM, align 4
  store i32 %109, i32* %10, align 4
  br label %184

110:                                              ; preds = %103
  %111 = load %struct.thread*, %struct.thread** %4, align 8
  %112 = call i32 @umtxq_check_susp(%struct.thread* %111, i32 1)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %184

116:                                              ; preds = %110
  br label %118

117:                                              ; preds = %100
  br label %119

118:                                              ; preds = %116
  br label %89

119:                                              ; preds = %117
  br label %122

120:                                              ; preds = %84
  %121 = load i32, i32* @EPERM, align 4
  store i32 %121, i32* %10, align 4
  br label %184

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %122, %83
  store i32 0, i32* %13, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @URWLOCK_PREFER_READER, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %145, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @URWLOCK_WRITE_WAITERS, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  store i32 1, i32* %13, align 4
  %134 = load i32, i32* @UMTX_EXCLUSIVE_QUEUE, align 4
  store i32 %134, i32* %12, align 4
  br label %144

135:                                              ; preds = %128
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @URWLOCK_READ_WAITERS, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* @INT_MAX, align 4
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* @UMTX_SHARED_QUEUE, align 4
  store i32 %142, i32* %12, align 4
  br label %143

143:                                              ; preds = %140, %135
  br label %144

144:                                              ; preds = %143, %133
  br label %162

145:                                              ; preds = %123
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @URWLOCK_READ_WAITERS, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i32, i32* @INT_MAX, align 4
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* @UMTX_SHARED_QUEUE, align 4
  store i32 %152, i32* %12, align 4
  br label %161

153:                                              ; preds = %145
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @URWLOCK_WRITE_WAITERS, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  store i32 1, i32* %13, align 4
  %159 = load i32, i32* @UMTX_EXCLUSIVE_QUEUE, align 4
  store i32 %159, i32* %12, align 4
  br label %160

160:                                              ; preds = %158, %153
  br label %161

161:                                              ; preds = %160, %150
  br label %162

162:                                              ; preds = %161, %144
  %163 = load i32, i32* %13, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %183

165:                                              ; preds = %162
  %166 = load %struct.umtx_q*, %struct.umtx_q** %6, align 8
  %167 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %166, i32 0, i32 0
  %168 = call i32 @umtxq_lock(i32* %167)
  %169 = load %struct.umtx_q*, %struct.umtx_q** %6, align 8
  %170 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %169, i32 0, i32 0
  %171 = call i32 @umtxq_busy(i32* %170)
  %172 = load %struct.umtx_q*, %struct.umtx_q** %6, align 8
  %173 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %172, i32 0, i32 0
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %12, align 4
  %176 = call i32 @umtxq_signal_queue(i32* %173, i32 %174, i32 %175)
  %177 = load %struct.umtx_q*, %struct.umtx_q** %6, align 8
  %178 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %177, i32 0, i32 0
  %179 = call i32 @umtxq_unbusy(i32* %178)
  %180 = load %struct.umtx_q*, %struct.umtx_q** %6, align 8
  %181 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %180, i32 0, i32 0
  %182 = call i32 @umtxq_unlock(i32* %181)
  br label %183

183:                                              ; preds = %165, %162
  br label %184

184:                                              ; preds = %183, %120, %115, %108, %98, %79, %72, %61, %42
  %185 = load %struct.umtx_q*, %struct.umtx_q** %6, align 8
  %186 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %185, i32 0, i32 0
  %187 = call i32 @umtx_key_release(i32* %186)
  %188 = load i32, i32* %10, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %184, %34, %22
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @fueword32(i32*, i32*) #1

declare dso_local i32 @umtx_key_get(%struct.urwlock*, i32, i32, i32*) #1

declare dso_local i32 @GET_SHARE(i32) #1

declare dso_local i32 @casueword32(i32*, i32, i32*, i32) #1

declare dso_local i32 @umtxq_check_susp(%struct.thread*, i32) #1

declare dso_local i64 @URWLOCK_READER_COUNT(i32) #1

declare dso_local i32 @umtxq_lock(i32*) #1

declare dso_local i32 @umtxq_busy(i32*) #1

declare dso_local i32 @umtxq_signal_queue(i32*, i32, i32) #1

declare dso_local i32 @umtxq_unbusy(i32*) #1

declare dso_local i32 @umtxq_unlock(i32*) #1

declare dso_local i32 @umtx_key_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
