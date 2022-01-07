; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_readcis.c_read_one_tuplelist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/dumpcis/extr_readcis.c_read_one_tuplelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuple_list = type { i64, i32, %struct.tuple*, %struct.tuple_list* }
%struct.tuple = type { i8, i8, i8*, %struct.tuple* }
%struct.tuple_info = type { i8 }

@tlist = common dso_local global %struct.tuple_list* null, align 8
@MDF_ATTR = common dso_local global i32 0, align 4
@PIOCRWFLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Setting flag to rad %s memory failed\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"attribute\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Unable to seek to memory offset %ju\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"CIS code read\00", align 1
@CIS_NULL = common dso_local global i8 0, align 1
@CIS_END = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"CIS len read\00", align 1
@LENGTH_ANY = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"code %s (%d) ignored\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Can't read CIS data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tuple_list* (i32, i32, i64)* @read_one_tuplelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tuple_list* @read_one_tuplelist(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.tuple_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.tuple*, align 8
  %9 = alloca %struct.tuple*, align 8
  %10 = alloca %struct.tuple_list*, align 8
  %11 = alloca %struct.tuple_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.tuple* null, %struct.tuple** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.tuple_list*, %struct.tuple_list** @tlist, align 8
  store %struct.tuple_list* %15, %struct.tuple_list** %10, align 8
  br label %16

16:                                               ; preds = %35, %3
  %17 = load %struct.tuple_list*, %struct.tuple_list** %10, align 8
  %18 = icmp ne %struct.tuple_list* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load %struct.tuple_list*, %struct.tuple_list** %10, align 8
  %21 = getelementptr inbounds %struct.tuple_list, %struct.tuple_list* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.tuple_list*, %struct.tuple_list** %10, align 8
  %27 = getelementptr inbounds %struct.tuple_list, %struct.tuple_list* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MDF_ATTR, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store %struct.tuple_list* null, %struct.tuple_list** %4, align 8
  br label %209

34:                                               ; preds = %25, %19
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.tuple_list*, %struct.tuple_list** %10, align 8
  %37 = getelementptr inbounds %struct.tuple_list, %struct.tuple_list* %36, i32 0, i32 3
  %38 = load %struct.tuple_list*, %struct.tuple_list** %37, align 8
  store %struct.tuple_list* %38, %struct.tuple_list** %10, align 8
  br label %16

39:                                               ; preds = %16
  %40 = call i8* @xmalloc(i8 zeroext 32)
  %41 = bitcast i8* %40 to %struct.tuple_list*
  store %struct.tuple_list* %41, %struct.tuple_list** %10, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.tuple_list*, %struct.tuple_list** %10, align 8
  %44 = getelementptr inbounds %struct.tuple_list, %struct.tuple_list* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @MDF_ATTR, align 4
  %47 = and i32 %45, %46
  %48 = load %struct.tuple_list*, %struct.tuple_list** %10, align 8
  %49 = getelementptr inbounds %struct.tuple_list, %struct.tuple_list* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @PIOCRWFLAG, align 4
  %52 = call i64 @ioctl(i32 %50, i32 %51, i32* %6)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %39
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %59 = call i32 @err(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %54, %39
  %61 = load i32, i32* %5, align 4
  %62 = load i64, i64* %7, align 8
  %63 = load i32, i32* @SEEK_SET, align 4
  %64 = call i64 @lseek(i32 %61, i64 %62, i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i64, i64* %7, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @err(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %66, %60
  br label %71

71:                                               ; preds = %205, %70
  %72 = load i32, i32* %5, align 4
  %73 = call zeroext i8 @read(i32 %72, i8* %13, i8 zeroext 1)
  %74 = zext i8 %73 to i32
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %71
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  %81 = load i8, i8* %13, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* @CIS_NULL, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %196

87:                                               ; preds = %78
  %88 = call i8* @xmalloc(i8 zeroext 24)
  %89 = bitcast i8* %88 to %struct.tuple*
  store %struct.tuple* %89, %struct.tuple** %8, align 8
  %90 = load i8, i8* %13, align 1
  %91 = load %struct.tuple*, %struct.tuple** %8, align 8
  %92 = getelementptr inbounds %struct.tuple, %struct.tuple* %91, i32 0, i32 0
  store i8 %90, i8* %92, align 8
  %93 = load i8, i8* %13, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8, i8* @CIS_END, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  store i8 0, i8* %14, align 1
  br label %109

99:                                               ; preds = %87
  %100 = load i32, i32* %5, align 4
  %101 = call zeroext i8 @read(i32 %100, i8* %14, i8 zeroext 1)
  %102 = zext i8 %101 to i32
  %103 = icmp ne i32 %102, 1
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %99
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %106, %98
  %110 = load i8, i8* %14, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 255
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  store i8 0, i8* %14, align 1
  %114 = load i8, i8* @CIS_END, align 1
  store i8 %114, i8* %13, align 1
  br label %115

115:                                              ; preds = %113, %109
  %116 = load i8, i8* %14, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp slt i32 %117, 255
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load i8, i8* %13, align 1
  %122 = call %struct.tuple_info* @get_tuple_info(i8 zeroext %121)
  store %struct.tuple_info* %122, %struct.tuple_info** %11, align 8
  %123 = load %struct.tuple_info*, %struct.tuple_info** %11, align 8
  %124 = icmp eq %struct.tuple_info* %123, null
  br i1 %124, label %141, label %125

125:                                              ; preds = %115
  %126 = load %struct.tuple_info*, %struct.tuple_info** %11, align 8
  %127 = getelementptr inbounds %struct.tuple_info, %struct.tuple_info* %126, i32 0, i32 0
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = load i8, i8* @LENGTH_ANY, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp ne i32 %129, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %125
  %134 = load %struct.tuple_info*, %struct.tuple_info** %11, align 8
  %135 = getelementptr inbounds %struct.tuple_info, %struct.tuple_info* %134, i32 0, i32 0
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = load i8, i8* %14, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp sgt i32 %137, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %133, %115
  %142 = load i8, i8* %13, align 1
  %143 = call i8* @tuple_name(i8 zeroext %142)
  %144 = load i8, i8* %13, align 1
  %145 = zext i8 %144 to i32
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %143, i32 %145)
  br label %196

147:                                              ; preds = %133, %125
  %148 = load i8, i8* %14, align 1
  %149 = load %struct.tuple*, %struct.tuple** %8, align 8
  %150 = getelementptr inbounds %struct.tuple, %struct.tuple* %149, i32 0, i32 1
  store i8 %148, i8* %150, align 1
  %151 = load i8, i8* %14, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %176

154:                                              ; preds = %147
  %155 = load i8, i8* %14, align 1
  %156 = zext i8 %155 to i32
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %12, align 4
  %159 = load i8, i8* %14, align 1
  %160 = call i8* @xmalloc(i8 zeroext %159)
  %161 = load %struct.tuple*, %struct.tuple** %8, align 8
  %162 = getelementptr inbounds %struct.tuple, %struct.tuple* %161, i32 0, i32 2
  store i8* %160, i8** %162, align 8
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.tuple*, %struct.tuple** %8, align 8
  %165 = getelementptr inbounds %struct.tuple, %struct.tuple* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = load i8, i8* %14, align 1
  %168 = call zeroext i8 @read(i32 %163, i8* %166, i8 zeroext %167)
  %169 = zext i8 %168 to i32
  %170 = load i8, i8* %14, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp ne i32 %169, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %154
  %174 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %154
  br label %176

176:                                              ; preds = %175, %147
  %177 = load %struct.tuple*, %struct.tuple** %9, align 8
  %178 = icmp ne %struct.tuple* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load %struct.tuple*, %struct.tuple** %8, align 8
  %181 = load %struct.tuple*, %struct.tuple** %9, align 8
  %182 = getelementptr inbounds %struct.tuple, %struct.tuple* %181, i32 0, i32 3
  store %struct.tuple* %180, %struct.tuple** %182, align 8
  br label %183

183:                                              ; preds = %179, %176
  %184 = load %struct.tuple_list*, %struct.tuple_list** %10, align 8
  %185 = getelementptr inbounds %struct.tuple_list, %struct.tuple_list* %184, i32 0, i32 2
  %186 = load %struct.tuple*, %struct.tuple** %185, align 8
  %187 = icmp eq %struct.tuple* %186, null
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load %struct.tuple*, %struct.tuple** %8, align 8
  %190 = load %struct.tuple_list*, %struct.tuple_list** %10, align 8
  %191 = getelementptr inbounds %struct.tuple_list, %struct.tuple_list* %190, i32 0, i32 2
  store %struct.tuple* %189, %struct.tuple** %191, align 8
  %192 = load %struct.tuple*, %struct.tuple** %8, align 8
  %193 = getelementptr inbounds %struct.tuple, %struct.tuple* %192, i32 0, i32 3
  store %struct.tuple* null, %struct.tuple** %193, align 8
  br label %194

194:                                              ; preds = %188, %183
  %195 = load %struct.tuple*, %struct.tuple** %8, align 8
  store %struct.tuple* %195, %struct.tuple** %9, align 8
  br label %196

196:                                              ; preds = %194, %141, %86
  %197 = load i8, i8* %13, align 1
  %198 = zext i8 %197 to i32
  %199 = load i8, i8* @CIS_END, align 1
  %200 = zext i8 %199 to i32
  %201 = icmp ne i32 %198, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load i32, i32* %12, align 4
  %204 = icmp slt i32 %203, 1024
  br label %205

205:                                              ; preds = %202, %196
  %206 = phi i1 [ false, %196 ], [ %204, %202 ]
  br i1 %206, label %71, label %207

207:                                              ; preds = %205
  %208 = load %struct.tuple_list*, %struct.tuple_list** %10, align 8
  store %struct.tuple_list* %208, %struct.tuple_list** %4, align 8
  br label %209

209:                                              ; preds = %207, %33
  %210 = load %struct.tuple_list*, %struct.tuple_list** %4, align 8
  ret %struct.tuple_list* %210
}

declare dso_local i8* @xmalloc(i8 zeroext) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local zeroext i8 @read(i32, i8*, i8 zeroext) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.tuple_info* @get_tuple_info(i8 zeroext) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @tuple_name(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
