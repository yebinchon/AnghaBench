; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_ttydisc.c_ttydisc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32, i32, i32, i32 }
%struct.uio = type { i64 }

@TTY_STACKBUF = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@TF_ZOMBIE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@o = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@TF_HIWAT_OUT = common dso_local global i32 0, align 4
@IO_NDELAY = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttydisc_write(%struct.tty* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @TTY_STACKBUF, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.tty*, %struct.tty** %5, align 8
  %22 = load i32, i32* @MA_OWNED, align 4
  %23 = call i32 @tty_lock_assert(%struct.tty* %21, i32 %22)
  %24 = load %struct.tty*, %struct.tty** %5, align 8
  %25 = getelementptr inbounds %struct.tty, %struct.tty* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TF_ZOMBIE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @EIO, align 4
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %195

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %178, %32
  %34 = load %struct.uio*, %struct.uio** %6, align 8
  %35 = getelementptr inbounds %struct.uio, %struct.uio* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %179

38:                                               ; preds = %33
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @MPASS(i32 %41)
  store i8* %20, i8** %10, align 8
  %43 = load %struct.uio*, %struct.uio** %6, align 8
  %44 = getelementptr inbounds %struct.uio, %struct.uio* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %18 to i32
  %47 = call i32 @MIN(i64 %45, i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load %struct.tty*, %struct.tty** %5, align 8
  %49 = call i32 @tty_unlock(%struct.tty* %48)
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.uio*, %struct.uio** %6, align 8
  %52 = call i32 @uiomove(i8* %20, i32 %50, %struct.uio* %51)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.tty*, %struct.tty** %5, align 8
  %54 = call i32 @tty_lock(%struct.tty* %53)
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %38
  br label %179

58:                                               ; preds = %38
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %12, align 4
  %60 = load %struct.tty*, %struct.tty** %5, align 8
  %61 = call i64 @tty_gone(%struct.tty* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @ENXIO, align 4
  store i32 %64, i32* %11, align 4
  br label %179

65:                                               ; preds = %58
  %66 = load i32, i32* %12, align 4
  %67 = icmp ugt i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @MPASS(i32 %68)
  br label %70

70:                                               ; preds = %175, %65
  %71 = load i32, i32* @o, align 4
  %72 = load i32, i32* @OPOST, align 4
  %73 = call i64 @CMP_FLAG(i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i8*, i8** %10, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @ttydisc_findchar(i8* %76, i32 %77)
  store i32 %78, i32* %15, align 4
  br label %81

79:                                               ; preds = %70
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %79, %75
  %82 = load i32, i32* %15, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load %struct.tty*, %struct.tty** %5, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i8, i8* %86, align 1
  %88 = call i64 @ttydisc_write_oproc(%struct.tty* %85, i8 signext %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %84
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %10, align 8
  %93 = load i32, i32* %12, align 4
  %94 = add i32 %93, -1
  store i32 %94, i32* %12, align 4
  %95 = load %struct.tty*, %struct.tty** %5, align 8
  %96 = getelementptr inbounds %struct.tty, %struct.tty* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.tty*, %struct.tty** %5, align 8
  %99 = getelementptr inbounds %struct.tty, %struct.tty* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.tty*, %struct.tty** %5, align 8
  %101 = getelementptr inbounds %struct.tty, %struct.tty* %100, i32 0, i32 4
  %102 = call i32 @ttyinq_reprintpos_set(i32* %101)
  br label %175

103:                                              ; preds = %84
  br label %135

104:                                              ; preds = %81
  %105 = load %struct.tty*, %struct.tty** %5, align 8
  %106 = getelementptr inbounds %struct.tty, %struct.tty* %105, i32 0, i32 5
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @ttyoutq_write(i32* %106, i8* %107, i32 %108)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i8*, i8** %10, align 8
  %112 = zext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %10, align 8
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %12, align 4
  %116 = sub i32 %115, %114
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load %struct.tty*, %struct.tty** %5, align 8
  %119 = getelementptr inbounds %struct.tty, %struct.tty* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = add i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.tty*, %struct.tty** %5, align 8
  %123 = getelementptr inbounds %struct.tty, %struct.tty* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.tty*, %struct.tty** %5, align 8
  %126 = getelementptr inbounds %struct.tty, %struct.tty* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.tty*, %struct.tty** %5, align 8
  %128 = getelementptr inbounds %struct.tty, %struct.tty* %127, i32 0, i32 4
  %129 = call i32 @ttyinq_reprintpos_set(i32* %128)
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %15, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %104
  br label %175

134:                                              ; preds = %104
  br label %135

135:                                              ; preds = %134, %103
  %136 = load i32, i32* @TF_HIWAT_OUT, align 4
  %137 = load %struct.tty*, %struct.tty** %5, align 8
  %138 = getelementptr inbounds %struct.tty, %struct.tty* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @IO_NDELAY, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %146, i32* %11, align 4
  br label %180

147:                                              ; preds = %135
  %148 = load %struct.tty*, %struct.tty** %5, align 8
  %149 = call i32 @ttydevsw_outwakeup(%struct.tty* %148)
  %150 = load %struct.tty*, %struct.tty** %5, align 8
  %151 = getelementptr inbounds %struct.tty, %struct.tty* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @TF_HIWAT_OUT, align 4
  %154 = and i32 %152, %153
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  br label %175

157:                                              ; preds = %147
  %158 = load %struct.tty*, %struct.tty** %5, align 8
  %159 = load %struct.tty*, %struct.tty** %5, align 8
  %160 = getelementptr inbounds %struct.tty, %struct.tty* %159, i32 0, i32 3
  %161 = call i32 @tty_wait(%struct.tty* %158, i32* %160)
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %180

165:                                              ; preds = %157
  %166 = load %struct.tty*, %struct.tty** %5, align 8
  %167 = getelementptr inbounds %struct.tty, %struct.tty* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @TF_ZOMBIE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = load i32, i32* @EIO, align 4
  store i32 %173, i32* %11, align 4
  br label %180

174:                                              ; preds = %165
  br label %175

175:                                              ; preds = %174, %156, %133, %90
  %176 = load i32, i32* %12, align 4
  %177 = icmp ugt i32 %176, 0
  br i1 %177, label %70, label %178

178:                                              ; preds = %175
  br label %33

179:                                              ; preds = %63, %57, %33
  br label %180

180:                                              ; preds = %179, %172, %164, %145
  %181 = load %struct.tty*, %struct.tty** %5, align 8
  %182 = call i64 @tty_gone(%struct.tty* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %180
  %185 = load %struct.tty*, %struct.tty** %5, align 8
  %186 = call i32 @ttydevsw_outwakeup(%struct.tty* %185)
  br label %187

187:                                              ; preds = %184, %180
  %188 = load i32, i32* %12, align 4
  %189 = zext i32 %188 to i64
  %190 = load %struct.uio*, %struct.uio** %6, align 8
  %191 = getelementptr inbounds %struct.uio, %struct.uio* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, %189
  store i64 %193, i64* %191, align 8
  %194 = load i32, i32* %11, align 4
  store i32 %194, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %195

195:                                              ; preds = %187, %30
  %196 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %196)
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tty_lock_assert(%struct.tty*, i32) #2

declare dso_local i32 @MPASS(i32) #2

declare dso_local i32 @MIN(i64, i32) #2

declare dso_local i32 @tty_unlock(%struct.tty*) #2

declare dso_local i32 @uiomove(i8*, i32, %struct.uio*) #2

declare dso_local i32 @tty_lock(%struct.tty*) #2

declare dso_local i64 @tty_gone(%struct.tty*) #2

declare dso_local i64 @CMP_FLAG(i32, i32) #2

declare dso_local i32 @ttydisc_findchar(i8*, i32) #2

declare dso_local i64 @ttydisc_write_oproc(%struct.tty*, i8 signext) #2

declare dso_local i32 @ttyinq_reprintpos_set(i32*) #2

declare dso_local i32 @ttyoutq_write(i32*, i8*, i32) #2

declare dso_local i32 @ttydevsw_outwakeup(%struct.tty*) #2

declare dso_local i32 @tty_wait(%struct.tty*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
