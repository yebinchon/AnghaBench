; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/btsockstat/extr_btsockstat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/btsockstat/extr_btsockstat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"hnM:p:r\00", align 1
@numeric_bdaddr = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"hci_raw\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"l2cap_raw\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"l2cap\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"rfcomm\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"rfcomm_s\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"setgid\00", align 1
@nl = common dso_local global %struct.TYPE_2__* null, align 8
@N_L2CAP_RAW_RT = common dso_local global i64 0, align 8
@N_L2CAP_RT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  br label %11

11:                                               ; preds = %57, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %58

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %55 [
    i32 110, label %18
    i32 77, label %19
    i32 112, label %21
    i32 114, label %53
    i32 104, label %54
  ]

18:                                               ; preds = %16
  store i32 1, i32* @numeric_bdaddr, align 4
  br label %57

19:                                               ; preds = %16
  %20 = load i8*, i8** @optarg, align 8
  store i8* %20, i8** %10, align 8
  br label %57

21:                                               ; preds = %16
  %22 = load i8*, i8** @optarg, align 8
  %23 = call i32 @strcasecmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 132, i32* %7, align 4
  br label %52

26:                                               ; preds = %21
  %27 = load i8*, i8** @optarg, align 8
  %28 = call i32 @strcasecmp(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 130, i32* %7, align 4
  br label %51

31:                                               ; preds = %26
  %32 = load i8*, i8** @optarg, align 8
  %33 = call i32 @strcasecmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 131, i32* %7, align 4
  br label %50

36:                                               ; preds = %31
  %37 = load i8*, i8** @optarg, align 8
  %38 = call i32 @strcasecmp(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 129, i32* %7, align 4
  br label %49

41:                                               ; preds = %36
  %42 = load i8*, i8** @optarg, align 8
  %43 = call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 128, i32* %7, align 4
  br label %48

46:                                               ; preds = %41
  %47 = call i32 (...) @usage()
  br label %48

48:                                               ; preds = %46, %45
  br label %49

49:                                               ; preds = %48, %40
  br label %50

50:                                               ; preds = %49, %35
  br label %51

51:                                               ; preds = %50, %30
  br label %52

52:                                               ; preds = %51, %25
  br label %57

53:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  br label %57

54:                                               ; preds = %16
  br label %55

55:                                               ; preds = %16, %54
  %56 = call i32 (...) @usage()
  br label %57

57:                                               ; preds = %55, %53, %52, %19, %18
  br label %11

58:                                               ; preds = %11
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 132
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 129
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 128
  br i1 %66, label %67, label %72

67:                                               ; preds = %64, %61, %58
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 (...) @usage()
  br label %72

72:                                               ; preds = %70, %67, %64
  %73 = load i8*, i8** %10, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = call i32 (...) @getgid()
  %77 = call i64 @setgid(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %75
  br label %82

82:                                               ; preds = %81, %72
  %83 = load i8*, i8** %10, align 8
  %84 = call i32* @kopen(i8* %83)
  store i32* %84, i32** %9, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 1, i32* %3, align 4
  br label %202

88:                                               ; preds = %82
  %89 = load i32, i32* %7, align 4
  switch i32 %89, label %149 [
    i32 132, label %90
    i32 130, label %97
    i32 131, label %116
    i32 129, label %135
    i32 128, label %142
  ]

90:                                               ; preds = %88
  %91 = load i32*, i32** %9, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 132
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @hcirawpr(i32* %91, i32 %95)
  br label %199

97:                                               ; preds = %88
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i32*, i32** %9, align 8
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %103 = load i64, i64* @N_L2CAP_RAW_RT, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @l2caprtpr(i32* %101, i32 %106)
  br label %115

108:                                              ; preds = %97
  %109 = load i32*, i32** %9, align 8
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 130
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @l2caprawpr(i32* %109, i32 %113)
  br label %115

115:                                              ; preds = %108, %100
  br label %199

116:                                              ; preds = %88
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load i32*, i32** %9, align 8
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %122 = load i64, i64* @N_L2CAP_RT, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @l2caprtpr(i32* %120, i32 %125)
  br label %134

127:                                              ; preds = %116
  %128 = load i32*, i32** %9, align 8
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 131
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @l2cappr(i32* %128, i32 %132)
  br label %134

134:                                              ; preds = %127, %119
  br label %199

135:                                              ; preds = %88
  %136 = load i32*, i32** %9, align 8
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 129
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @rfcommpr(i32* %136, i32 %140)
  br label %199

142:                                              ; preds = %88
  %143 = load i32*, i32** %9, align 8
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 128
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @rfcommpr_s(i32* %143, i32 %147)
  br label %199

149:                                              ; preds = %88
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %149
  %153 = load i32*, i32** %9, align 8
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %155 = load i64, i64* @N_L2CAP_RAW_RT, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @l2caprtpr(i32* %153, i32 %158)
  %160 = load i32*, i32** %9, align 8
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %162 = load i64, i64* @N_L2CAP_RT, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @l2caprtpr(i32* %160, i32 %165)
  br label %198

167:                                              ; preds = %149
  %168 = load i32*, i32** %9, align 8
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 132
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @hcirawpr(i32* %168, i32 %172)
  %174 = load i32*, i32** %9, align 8
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i64 130
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @l2caprawpr(i32* %174, i32 %178)
  %180 = load i32*, i32** %9, align 8
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i64 131
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @l2cappr(i32* %180, i32 %184)
  %186 = load i32*, i32** %9, align 8
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i64 128
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @rfcommpr_s(i32* %186, i32 %190)
  %192 = load i32*, i32** %9, align 8
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i64 129
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @rfcommpr(i32* %192, i32 %196)
  br label %198

198:                                              ; preds = %167, %152
  br label %199

199:                                              ; preds = %198, %142, %135, %134, %115, %90
  %200 = load i32*, i32** %9, align 8
  %201 = call i32 @kvm_close(i32* %200)
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %199, %87
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @setgid(i32) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32* @kopen(i8*) #1

declare dso_local i32 @hcirawpr(i32*, i32) #1

declare dso_local i32 @l2caprtpr(i32*, i32) #1

declare dso_local i32 @l2caprawpr(i32*, i32) #1

declare dso_local i32 @l2cappr(i32*, i32) #1

declare dso_local i32 @rfcommpr(i32*, i32) #1

declare dso_local i32 @rfcommpr_s(i32*, i32) #1

declare dso_local i32 @kvm_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
