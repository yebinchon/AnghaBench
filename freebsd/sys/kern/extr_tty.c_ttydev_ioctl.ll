; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_ttydev_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_ttydev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.tty* }
%struct.tty = type { %struct.termios, %struct.termios, %struct.termios }
%struct.termios = type { i32, i32, i32, i32, i64, i64, i64* }
%struct.thread = type { i32 }

@curthread = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@NCCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @ttydev_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttydev_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.tty*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.termios*, align 8
  %15 = alloca %struct.termios*, align 8
  %16 = alloca %struct.termios*, align 8
  %17 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %18 = load %struct.cdev*, %struct.cdev** %7, align 8
  %19 = getelementptr inbounds %struct.cdev, %struct.cdev* %18, i32 0, i32 0
  %20 = load %struct.tty*, %struct.tty** %19, align 8
  store %struct.tty* %20, %struct.tty** %12, align 8
  %21 = load %struct.tty*, %struct.tty** %12, align 8
  %22 = call i32 @ttydev_enter(%struct.tty* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %6, align 4
  br label %201

27:                                               ; preds = %5
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %38 [
    i32 153, label %29
    i32 152, label %29
    i32 151, label %29
    i32 150, label %29
    i32 149, label %29
    i32 145, label %29
    i32 144, label %29
    i32 143, label %29
    i32 141, label %29
    i32 140, label %29
    i32 139, label %29
    i32 133, label %29
    i32 132, label %29
    i32 131, label %29
    i32 130, label %29
    i32 129, label %29
    i32 128, label %29
  ]

29:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  %30 = load %struct.tty*, %struct.tty** %12, align 8
  %31 = load i32, i32* @curthread, align 4
  %32 = load i32, i32* @SIGTTOU, align 4
  %33 = call i32 @tty_wait_background(%struct.tty* %30, i32 %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %197

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 141
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 139
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 140
  br i1 %46, label %47, label %190

47:                                               ; preds = %44, %41, %38
  %48 = load %struct.tty*, %struct.tty** %12, align 8
  %49 = getelementptr inbounds %struct.tty, %struct.tty* %48, i32 0, i32 2
  store %struct.termios* %49, %struct.termios** %14, align 8
  %50 = load i64, i64* %9, align 8
  %51 = inttoptr i64 %50 to %struct.termios*
  store %struct.termios* %51, %struct.termios** %15, align 8
  %52 = load %struct.tty*, %struct.tty** %12, align 8
  %53 = load %struct.cdev*, %struct.cdev** %7, align 8
  %54 = call i64 @TTY_CALLOUT(%struct.tty* %52, %struct.cdev* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct.tty*, %struct.tty** %12, align 8
  %58 = getelementptr inbounds %struct.tty, %struct.tty* %57, i32 0, i32 1
  br label %62

59:                                               ; preds = %47
  %60 = load %struct.tty*, %struct.tty** %12, align 8
  %61 = getelementptr inbounds %struct.tty, %struct.tty* %60, i32 0, i32 0
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi %struct.termios* [ %58, %56 ], [ %61, %59 ]
  store %struct.termios* %63, %struct.termios** %16, align 8
  %64 = load %struct.termios*, %struct.termios** %14, align 8
  %65 = getelementptr inbounds %struct.termios, %struct.termios* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.termios*, %struct.termios** %16, align 8
  %68 = getelementptr inbounds %struct.termios, %struct.termios* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %66, %69
  %71 = load %struct.termios*, %struct.termios** %15, align 8
  %72 = getelementptr inbounds %struct.termios, %struct.termios* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.termios*, %struct.termios** %16, align 8
  %75 = getelementptr inbounds %struct.termios, %struct.termios* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = xor i32 %76, -1
  %78 = and i32 %73, %77
  %79 = or i32 %70, %78
  %80 = load %struct.termios*, %struct.termios** %15, align 8
  %81 = getelementptr inbounds %struct.termios, %struct.termios* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.termios*, %struct.termios** %14, align 8
  %83 = getelementptr inbounds %struct.termios, %struct.termios* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.termios*, %struct.termios** %16, align 8
  %86 = getelementptr inbounds %struct.termios, %struct.termios* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %84, %87
  %89 = load %struct.termios*, %struct.termios** %15, align 8
  %90 = getelementptr inbounds %struct.termios, %struct.termios* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.termios*, %struct.termios** %16, align 8
  %93 = getelementptr inbounds %struct.termios, %struct.termios* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = xor i32 %94, -1
  %96 = and i32 %91, %95
  %97 = or i32 %88, %96
  %98 = load %struct.termios*, %struct.termios** %15, align 8
  %99 = getelementptr inbounds %struct.termios, %struct.termios* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.termios*, %struct.termios** %14, align 8
  %101 = getelementptr inbounds %struct.termios, %struct.termios* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.termios*, %struct.termios** %16, align 8
  %104 = getelementptr inbounds %struct.termios, %struct.termios* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %102, %105
  %107 = load %struct.termios*, %struct.termios** %15, align 8
  %108 = getelementptr inbounds %struct.termios, %struct.termios* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.termios*, %struct.termios** %16, align 8
  %111 = getelementptr inbounds %struct.termios, %struct.termios* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = xor i32 %112, -1
  %114 = and i32 %109, %113
  %115 = or i32 %106, %114
  %116 = load %struct.termios*, %struct.termios** %15, align 8
  %117 = getelementptr inbounds %struct.termios, %struct.termios* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load %struct.termios*, %struct.termios** %14, align 8
  %119 = getelementptr inbounds %struct.termios, %struct.termios* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.termios*, %struct.termios** %16, align 8
  %122 = getelementptr inbounds %struct.termios, %struct.termios* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %120, %123
  %125 = load %struct.termios*, %struct.termios** %15, align 8
  %126 = getelementptr inbounds %struct.termios, %struct.termios* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.termios*, %struct.termios** %16, align 8
  %129 = getelementptr inbounds %struct.termios, %struct.termios* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = xor i32 %130, -1
  %132 = and i32 %127, %131
  %133 = or i32 %124, %132
  %134 = load %struct.termios*, %struct.termios** %15, align 8
  %135 = getelementptr inbounds %struct.termios, %struct.termios* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  store i32 0, i32* %17, align 4
  br label %136

136:                                              ; preds = %164, %62
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* @NCCS, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %167

140:                                              ; preds = %136
  %141 = load %struct.termios*, %struct.termios** %16, align 8
  %142 = getelementptr inbounds %struct.termios, %struct.termios* %141, i32 0, i32 6
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* %17, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %140
  %150 = load %struct.termios*, %struct.termios** %14, align 8
  %151 = getelementptr inbounds %struct.termios, %struct.termios* %150, i32 0, i32 6
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %17, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.termios*, %struct.termios** %15, align 8
  %158 = getelementptr inbounds %struct.termios, %struct.termios* %157, i32 0, i32 6
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %17, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  store i64 %156, i64* %162, align 8
  br label %163

163:                                              ; preds = %149, %140
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %17, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %17, align 4
  br label %136

167:                                              ; preds = %136
  %168 = load %struct.termios*, %struct.termios** %16, align 8
  %169 = getelementptr inbounds %struct.termios, %struct.termios* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load %struct.termios*, %struct.termios** %14, align 8
  %174 = getelementptr inbounds %struct.termios, %struct.termios* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.termios*, %struct.termios** %15, align 8
  %177 = getelementptr inbounds %struct.termios, %struct.termios* %176, i32 0, i32 5
  store i64 %175, i64* %177, align 8
  br label %178

178:                                              ; preds = %172, %167
  %179 = load %struct.termios*, %struct.termios** %16, align 8
  %180 = getelementptr inbounds %struct.termios, %struct.termios* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %178
  %184 = load %struct.termios*, %struct.termios** %14, align 8
  %185 = getelementptr inbounds %struct.termios, %struct.termios* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.termios*, %struct.termios** %15, align 8
  %188 = getelementptr inbounds %struct.termios, %struct.termios* %187, i32 0, i32 4
  store i64 %186, i64* %188, align 8
  br label %189

189:                                              ; preds = %183, %178
  br label %190

190:                                              ; preds = %189, %44
  %191 = load %struct.tty*, %struct.tty** %12, align 8
  %192 = load i32, i32* %8, align 4
  %193 = load i64, i64* %9, align 8
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.thread*, %struct.thread** %11, align 8
  %196 = call i32 @tty_ioctl(%struct.tty* %191, i32 %192, i64 %193, i32 %194, %struct.thread* %195)
  store i32 %196, i32* %13, align 4
  br label %197

197:                                              ; preds = %190, %36
  %198 = load %struct.tty*, %struct.tty** %12, align 8
  %199 = call i32 @tty_unlock(%struct.tty* %198)
  %200 = load i32, i32* %13, align 4
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %197, %25
  %202 = load i32, i32* %6, align 4
  ret i32 %202
}

declare dso_local i32 @ttydev_enter(%struct.tty*) #1

declare dso_local i32 @tty_wait_background(%struct.tty*, i32, i32) #1

declare dso_local i64 @TTY_CALLOUT(%struct.tty*, %struct.cdev*) #1

declare dso_local i32 @tty_ioctl(%struct.tty*, i32, i64, i32, %struct.thread*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
