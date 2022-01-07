; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_prep_devname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_prep_devname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i8* }

@devmtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i8*, i32)* @prep_devname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prep_devname(%struct.cdev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @mtx_assert(i32* @devmtx, i32 %13)
  %15 = load %struct.cdev*, %struct.cdev** %5, align 8
  %16 = getelementptr inbounds %struct.cdev, %struct.cdev* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @vsnrprintf(i8* %17, i32 8, i32 32, i8* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i64 %22, 7
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %25, i32* %4, align 4
  br label %188

26:                                               ; preds = %3
  %27 = load %struct.cdev*, %struct.cdev** %5, align 8
  %28 = getelementptr inbounds %struct.cdev, %struct.cdev* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %9, align 8
  br label %30

30:                                               ; preds = %36, %26
  %31 = load i8*, i8** %9, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 47
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %9, align 8
  br label %30

39:                                               ; preds = %30
  %40 = load %struct.cdev*, %struct.cdev** %5, align 8
  %41 = getelementptr inbounds %struct.cdev, %struct.cdev* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %12, align 8
  br label %43

43:                                               ; preds = %96, %39
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %101

48:                                               ; preds = %43
  %49 = load i8*, i8** %9, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @isspace(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 34
  br i1 %57, label %58, label %60

58:                                               ; preds = %53, %48
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %4, align 4
  br label %188

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %75, %60
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 47
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 47
  br label %73

73:                                               ; preds = %67, %61
  %74 = phi i1 [ false, %61 ], [ %72, %67 ]
  br i1 %74, label %75, label %78

75:                                               ; preds = %73
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %9, align 8
  br label %61

78:                                               ; preds = %73
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 47
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @EINVAL, align 4
  store i32 %91, i32* %4, align 4
  br label %188

92:                                               ; preds = %84, %78
  %93 = load i8*, i8** %9, align 8
  %94 = load i8, i8* %93, align 1
  %95 = load i8*, i8** %12, align 8
  store i8 %94, i8* %95, align 1
  br label %96

96:                                               ; preds = %92
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %9, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %12, align 8
  br label %43

101:                                              ; preds = %43
  %102 = load i8*, i8** %12, align 8
  store i8 0, i8* %102, align 1
  %103 = load %struct.cdev*, %struct.cdev** %5, align 8
  %104 = getelementptr inbounds %struct.cdev, %struct.cdev* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = load i32, i32* @EINVAL, align 4
  store i32 %111, i32* %4, align 4
  br label %188

112:                                              ; preds = %101
  %113 = load %struct.cdev*, %struct.cdev** %5, align 8
  %114 = getelementptr inbounds %struct.cdev, %struct.cdev* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %11, align 8
  br label %116

116:                                              ; preds = %176, %112
  %117 = load i8*, i8** %11, align 8
  store i8* %117, i8** %10, align 8
  br label %118

118:                                              ; preds = %131, %116
  %119 = load i8*, i8** %10, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 47
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load i8*, i8** %10, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br label %128

128:                                              ; preds = %123, %118
  %129 = phi i1 [ false, %118 ], [ %127, %123 ]
  br i1 %129, label %130, label %134

130:                                              ; preds = %128
  br label %131

131:                                              ; preds = %130
  %132 = load i8*, i8** %10, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %10, align 8
  br label %118

134:                                              ; preds = %128
  %135 = load i8*, i8** %10, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = ptrtoint i8* %135 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  %140 = icmp eq i64 %139, 1
  br i1 %140, label %141, label %149

141:                                              ; preds = %134
  %142 = load i8*, i8** %11, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 46
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = load i32, i32* @EINVAL, align 4
  store i32 %148, i32* %4, align 4
  br label %188

149:                                              ; preds = %141, %134
  %150 = load i8*, i8** %10, align 8
  %151 = load i8*, i8** %11, align 8
  %152 = ptrtoint i8* %150 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  %155 = icmp eq i64 %154, 2
  br i1 %155, label %156, label %170

156:                                              ; preds = %149
  %157 = load i8*, i8** %11, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 46
  br i1 %161, label %162, label %170

162:                                              ; preds = %156
  %163 = load i8*, i8** %11, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 46
  br i1 %167, label %168, label %170

168:                                              ; preds = %162
  %169 = load i32, i32* @EINVAL, align 4
  store i32 %169, i32* %4, align 4
  br label %188

170:                                              ; preds = %162, %156, %149
  %171 = load i8*, i8** %10, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 47
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %179

176:                                              ; preds = %170
  %177 = load i8*, i8** %10, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  store i8* %178, i8** %11, align 8
  br label %116

179:                                              ; preds = %175
  %180 = load %struct.cdev*, %struct.cdev** %5, align 8
  %181 = getelementptr inbounds %struct.cdev, %struct.cdev* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i64 @devfs_dev_exists(i8* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %179
  %186 = load i32, i32* @EEXIST, align 4
  store i32 %186, i32* %4, align 4
  br label %188

187:                                              ; preds = %179
  store i32 0, i32* %4, align 4
  br label %188

188:                                              ; preds = %187, %185, %168, %147, %110, %90, %58, %24
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @vsnrprintf(i8*, i32, i32, i8*, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @devfs_dev_exists(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
