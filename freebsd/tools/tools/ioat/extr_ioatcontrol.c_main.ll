; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ioat/extr_ioatcontrol.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ioat/extr_ioatcontrol.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_test = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [14 x i8] c"c:EefmrvVwxXz\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"Invalid: Cannot use >1 mode flag (-E, -e, -f, -m, -r, -x or -X)\0A\00", align 1
@IOAT_TEST_DMA = common dso_local global i32 0, align 4
@IOAT_TEST_FILL = common dso_local global i32 0, align 4
@IOAT_TEST_DMA_8K = common dso_local global i32 0, align 4
@IOAT_TEST_MEMCPY = common dso_local global i32 0, align 4
@IOAT_TEST_DMA_CRC = common dso_local global i32 0, align 4
@IOAT_TEST_DMA_CRC_COPY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Channel number must be between 0 and 7.\0A\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@EX_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Buffer size must be greater than zero\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Chain length must be greater than zero\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Duration must be greater than zero\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"/dev/ioat_test\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Cannot open /dev/ioat_test\0A\00", align 1
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@IOAT_DMATEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ioat_test, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = call i32 @memset(%struct.ioat_test* %6, i32 0, i32 56)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %16, align 4
  br label %18

18:                                               ; preds = %60, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %8, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %61

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %58 [
    i32 99, label %25
    i32 69, label %29
    i32 101, label %32
    i32 102, label %35
    i32 109, label %38
    i32 114, label %41
    i32 118, label %44
    i32 86, label %46
    i32 119, label %48
    i32 120, label %50
    i32 88, label %53
    i32 122, label %56
  ]

25:                                               ; preds = %23
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i8* @atoi(i8* %26)
  %28 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 10
  store i8* %27, i8** %28, align 8
  br label %60

29:                                               ; preds = %23
  store i32 1, i32* %11, align 4
  %30 = load i32, i32* %16, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %16, align 4
  br label %60

32:                                               ; preds = %23
  store i32 1, i32* %12, align 4
  %33 = load i32, i32* %16, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %16, align 4
  br label %60

35:                                               ; preds = %23
  store i32 1, i32* %9, align 4
  %36 = load i32, i32* %16, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %16, align 4
  br label %60

38:                                               ; preds = %23
  store i32 1, i32* %13, align 4
  %39 = load i32, i32* %16, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %16, align 4
  br label %60

41:                                               ; preds = %23
  store i32 1, i32* %10, align 4
  %42 = load i32, i32* %16, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %16, align 4
  br label %60

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %60

46:                                               ; preds = %23
  %47 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 1
  store i32 1, i32* %47, align 4
  br label %60

48:                                               ; preds = %23
  %49 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 2
  store i32 1, i32* %49, align 8
  br label %60

50:                                               ; preds = %23
  store i32 1, i32* %14, align 4
  %51 = load i32, i32* %16, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %16, align 4
  br label %60

53:                                               ; preds = %23
  store i32 1, i32* %15, align 4
  %54 = load i32, i32* %16, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %16, align 4
  br label %60

56:                                               ; preds = %23
  %57 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 3
  store i32 1, i32* %57, align 4
  br label %60

58:                                               ; preds = %23
  %59 = call i32 (...) @usage()
  br label %60

60:                                               ; preds = %58, %56, %53, %50, %48, %46, %44, %41, %38, %35, %32, %29, %25
  br label %18

61:                                               ; preds = %18
  %62 = load i64, i64* @optind, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  %67 = load i64, i64* @optind, align 8
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 %67
  store i8** %69, i8*** %5, align 8
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 2
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = call i32 (...) @usage()
  br label %74

74:                                               ; preds = %72, %61
  %75 = load i32, i32* %16, align 4
  %76 = icmp ugt i32 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %79 = call i32 (...) @usage()
  br label %80

80:                                               ; preds = %77, %74
  %81 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 4
  store i32 262144, i32* %81, align 8
  %82 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 5
  store i32 2, i32* %82, align 4
  %83 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 6
  store i32 0, i32* %83, align 8
  %84 = load i32, i32* @IOAT_TEST_DMA, align 4
  %85 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 9
  store i32 %84, i32* %85, align 8
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i32, i32* @IOAT_TEST_FILL, align 4
  %90 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 9
  store i32 %89, i32* %90, align 8
  br label %123

91:                                               ; preds = %80
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94, %91
  %98 = load i32, i32* @IOAT_TEST_DMA_8K, align 4
  %99 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 9
  store i32 %98, i32* %99, align 8
  %100 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 4
  store i32 8192, i32* %100, align 8
  br label %122

101:                                              ; preds = %94
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* @IOAT_TEST_MEMCPY, align 4
  %106 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 9
  store i32 %105, i32* %106, align 8
  br label %121

107:                                              ; preds = %101
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* @IOAT_TEST_DMA_CRC, align 4
  %112 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 9
  store i32 %111, i32* %112, align 8
  br label %120

113:                                              ; preds = %107
  %114 = load i32, i32* %15, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* @IOAT_TEST_DMA_CRC_COPY, align 4
  %118 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 9
  store i32 %117, i32* %118, align 8
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119, %110
  br label %121

121:                                              ; preds = %120, %104
  br label %122

122:                                              ; preds = %121, %97
  br label %123

123:                                              ; preds = %122, %88
  %124 = load i8**, i8*** %5, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i8* @atoi(i8* %126)
  %128 = ptrtoint i8* %127 to i32
  %129 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 7
  store i32 %128, i32* %129, align 4
  %130 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %131, 8
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i32, i32* @EX_USAGE, align 4
  store i32 %135, i32* %3, align 4
  br label %215

136:                                              ; preds = %123
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i32, i32* %4, align 4
  %141 = load i8**, i8*** %5, align 8
  %142 = call i32 @main_raw(%struct.ioat_test* %6, i32 %140, i8** %141)
  %143 = load i32, i32* @EX_OK, align 4
  store i32 %143, i32* %3, align 4
  br label %215

144:                                              ; preds = %136
  %145 = load i8**, i8*** %5, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 1
  %147 = load i8*, i8** %146, align 8
  %148 = call i8* @atoi(i8* %147)
  %149 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 8
  store i8* %148, i8** %149, align 8
  %150 = load i32, i32* %4, align 4
  %151 = icmp sge i32 %150, 3
  br i1 %151, label %152, label %166

152:                                              ; preds = %144
  %153 = load i8**, i8*** %5, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 2
  %155 = load i8*, i8** %154, align 8
  %156 = call i8* @atoi(i8* %155)
  %157 = ptrtoint i8* %156 to i32
  %158 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 4
  store i32 %157, i32* %158, align 8
  %159 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %152
  %163 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %164 = load i32, i32* @EX_USAGE, align 4
  store i32 %164, i32* %3, align 4
  br label %215

165:                                              ; preds = %152
  br label %166

166:                                              ; preds = %165, %144
  %167 = load i32, i32* %4, align 4
  %168 = icmp sge i32 %167, 4
  br i1 %168, label %169, label %183

169:                                              ; preds = %166
  %170 = load i8**, i8*** %5, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 3
  %172 = load i8*, i8** %171, align 8
  %173 = call i8* @atoi(i8* %172)
  %174 = ptrtoint i8* %173 to i32
  %175 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 5
  store i32 %174, i32* %175, align 4
  %176 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %177, 1
  br i1 %178, label %179, label %182

179:                                              ; preds = %169
  %180 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %181 = load i32, i32* @EX_USAGE, align 4
  store i32 %181, i32* %3, align 4
  br label %215

182:                                              ; preds = %169
  br label %183

183:                                              ; preds = %182, %166
  %184 = load i32, i32* %4, align 4
  %185 = icmp sge i32 %184, 5
  br i1 %185, label %186, label %200

186:                                              ; preds = %183
  %187 = load i8**, i8*** %5, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 4
  %189 = load i8*, i8** %188, align 8
  %190 = call i8* @atoi(i8* %189)
  %191 = ptrtoint i8* %190 to i32
  %192 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 6
  store i32 %191, i32* %192, align 8
  %193 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 6
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %194, 1
  br i1 %195, label %196, label %199

196:                                              ; preds = %186
  %197 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %198 = load i32, i32* @EX_USAGE, align 4
  store i32 %198, i32* %3, align 4
  br label %215

199:                                              ; preds = %186
  br label %200

200:                                              ; preds = %199, %183
  %201 = load i32, i32* @O_RDWR, align 4
  %202 = call i32 @open(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %201)
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %207 = load i32, i32* @EX_UNAVAILABLE, align 4
  store i32 %207, i32* %3, align 4
  br label %215

208:                                              ; preds = %200
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* @IOAT_DMATEST, align 4
  %211 = call i32 @ioctl(i32 %209, i32 %210, %struct.ioat_test* %6)
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @close(i32 %212)
  %214 = call i32 @prettyprint(%struct.ioat_test* %6)
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %208, %205, %196, %179, %162, %139, %133
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i32 @memset(%struct.ioat_test*, i32, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @main_raw(%struct.ioat_test*, i32, i8**) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ioat_test*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @prettyprint(%struct.ioat_test*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
