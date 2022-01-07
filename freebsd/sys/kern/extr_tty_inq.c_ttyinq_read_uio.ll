; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_inq.c_ttyinq_read_uio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_inq.c_ttyinq_read_uio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttyinq = type { i64, i64, i64, i64, %struct.ttyinq_block* }
%struct.ttyinq_block = type { i8* }
%struct.tty = type { i32 }
%struct.uio = type { i64 }

@TTYINQ_DATASIZE = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttyinq_read_uio(%struct.ttyinq* %0, %struct.tty* %1, %struct.uio* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttyinq*, align 8
  %8 = alloca %struct.tty*, align 8
  %9 = alloca %struct.uio*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ttyinq_block*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.ttyinq* %0, %struct.ttyinq** %7, align 8
  store %struct.tty* %1, %struct.tty** %8, align 8
  store %struct.uio* %2, %struct.uio** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.uio*, %struct.uio** %9, align 8
  %21 = getelementptr inbounds %struct.uio, %struct.uio* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ule i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @MPASS(i32 %24)
  br label %26

26:                                               ; preds = %200, %5
  %27 = load i64, i64* %10, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %201

29:                                               ; preds = %26
  %30 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %31 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %34 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %202

38:                                               ; preds = %29
  %39 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %40 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %39, i32 0, i32 4
  %41 = load %struct.ttyinq_block*, %struct.ttyinq_block** %40, align 8
  store %struct.ttyinq_block* %41, %struct.ttyinq_block** %13, align 8
  %42 = load %struct.ttyinq_block*, %struct.ttyinq_block** %13, align 8
  %43 = icmp eq %struct.ttyinq_block* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %202

45:                                               ; preds = %38
  %46 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %47 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %14, align 8
  %49 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %50 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %53 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %54, %55
  %57 = call i64 @MIN(i64 %51, i64 %56)
  %58 = load i64, i64* @TTYINQ_DATASIZE, align 8
  %59 = call i64 @MIN(i64 %57, i64 %58)
  store i64 %59, i64* %15, align 8
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* %14, align 8
  %62 = sub i64 %60, %61
  store i64 %62, i64* %16, align 8
  %63 = load i64, i64* %16, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp uge i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @MPASS(i32 %66)
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* %10, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* @TTYINQ_DATASIZE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %45
  %75 = load i64, i64* %15, align 8
  %76 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %77 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %153

80:                                               ; preds = %74, %45
  %81 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %82 = call i32 @TTYINQ_REMOVE_HEAD(%struct.ttyinq* %81)
  %83 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %84 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %80
  %86 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %87 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @TTYINQ_DATASIZE, align 8
  %90 = icmp ule i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %93 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  br label %100

94:                                               ; preds = %85
  %95 = load i64, i64* @TTYINQ_DATASIZE, align 8
  %96 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %97 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = sub i64 %98, %95
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %94, %91
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %104 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TTYINQ_DATASIZE, align 8
  %107 = icmp ule i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %110 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  br label %117

111:                                              ; preds = %102
  %112 = load i64, i64* @TTYINQ_DATASIZE, align 8
  %113 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %114 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = sub i64 %115, %112
  store i64 %116, i64* %114, align 8
  br label %117

117:                                              ; preds = %111, %108
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %121 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TTYINQ_DATASIZE, align 8
  %124 = icmp ule i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %127 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %126, i32 0, i32 2
  store i64 0, i64* %127, align 8
  br label %134

128:                                              ; preds = %119
  %129 = load i64, i64* @TTYINQ_DATASIZE, align 8
  %130 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %131 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = sub i64 %132, %129
  store i64 %133, i64* %131, align 8
  br label %134

134:                                              ; preds = %128, %125
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.tty*, %struct.tty** %8, align 8
  %137 = call i32 @tty_unlock(%struct.tty* %136)
  %138 = load %struct.ttyinq_block*, %struct.ttyinq_block** %13, align 8
  %139 = getelementptr inbounds %struct.ttyinq_block, %struct.ttyinq_block* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load i64, i64* %14, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  %143 = load i64, i64* %16, align 8
  %144 = load i64, i64* %11, align 8
  %145 = sub i64 %143, %144
  %146 = load %struct.uio*, %struct.uio** %9, align 8
  %147 = call i32 @uiomove(i8* %142, i64 %145, %struct.uio* %146)
  store i32 %147, i32* %12, align 4
  %148 = load %struct.tty*, %struct.tty** %8, align 8
  %149 = call i32 @tty_lock(%struct.tty* %148)
  %150 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %151 = load %struct.ttyinq_block*, %struct.ttyinq_block** %13, align 8
  %152 = call i32 @TTYINQ_RECYCLE(%struct.ttyinq* %150, %struct.ttyinq_block* %151)
  br label %189

153:                                              ; preds = %74
  %154 = load i64, i64* @TTYINQ_DATASIZE, align 8
  %155 = sub i64 %154, 1
  %156 = call i8* @llvm.stacksave()
  store i8* %156, i8** %17, align 8
  %157 = alloca i8, i64 %155, align 16
  store i64 %155, i64* %18, align 8
  %158 = load %struct.ttyinq_block*, %struct.ttyinq_block** %13, align 8
  %159 = getelementptr inbounds %struct.ttyinq_block, %struct.ttyinq_block* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = load i64, i64* %14, align 8
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  %163 = load i64, i64* %16, align 8
  %164 = load i64, i64* %11, align 8
  %165 = sub i64 %163, %164
  %166 = call i32 @memcpy(i8* %157, i8* %162, i64 %165)
  %167 = load i64, i64* %16, align 8
  %168 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %169 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = add i64 %170, %167
  store i64 %171, i64* %169, align 8
  %172 = load %struct.ttyinq*, %struct.ttyinq** %7, align 8
  %173 = getelementptr inbounds %struct.ttyinq, %struct.ttyinq* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @TTYINQ_DATASIZE, align 8
  %176 = icmp ult i64 %174, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @MPASS(i32 %177)
  %179 = load %struct.tty*, %struct.tty** %8, align 8
  %180 = call i32 @tty_unlock(%struct.tty* %179)
  %181 = load i64, i64* %16, align 8
  %182 = load i64, i64* %11, align 8
  %183 = sub i64 %181, %182
  %184 = load %struct.uio*, %struct.uio** %9, align 8
  %185 = call i32 @uiomove(i8* %157, i64 %183, %struct.uio* %184)
  store i32 %185, i32* %12, align 4
  %186 = load %struct.tty*, %struct.tty** %8, align 8
  %187 = call i32 @tty_lock(%struct.tty* %186)
  %188 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %188)
  br label %189

189:                                              ; preds = %153, %135
  %190 = load i32, i32* %12, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = load i32, i32* %12, align 4
  store i32 %193, i32* %6, align 4
  br label %202

194:                                              ; preds = %189
  %195 = load %struct.tty*, %struct.tty** %8, align 8
  %196 = call i64 @tty_gone(%struct.tty* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i32, i32* @ENXIO, align 4
  store i32 %199, i32* %6, align 4
  br label %202

200:                                              ; preds = %194
  br label %26

201:                                              ; preds = %26
  store i32 0, i32* %6, align 4
  br label %202

202:                                              ; preds = %201, %198, %192, %44, %37
  %203 = load i32, i32* %6, align 4
  ret i32 %203
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @TTYINQ_REMOVE_HEAD(%struct.ttyinq*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @TTYINQ_RECYCLE(%struct.ttyinq*, %struct.ttyinq_block*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @tty_gone(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
