; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael2020_setup_twinax_edc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_ael1002.c_ael2020_setup_twinax_edc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_val = type { i32, i32, i32, i32 }
%struct.cphy = type { i32 }

@ael2020_setup_twinax_edc.uCclock40MHz = internal global [3 x %struct.reg_val] [%struct.reg_val { i32 128, i32 65320, i32 65535, i32 16385 }, %struct.reg_val { i32 128, i32 65322, i32 65535, i32 2 }, %struct.reg_val zeroinitializer], align 16
@ael2020_setup_twinax_edc.uCclockActivate = internal global [2 x %struct.reg_val] [%struct.reg_val { i32 128, i32 53248, i32 65535, i32 20992 }, %struct.reg_val zeroinitializer], align 16
@ael2020_setup_twinax_edc.uCactivate = internal global [3 x %struct.reg_val] [%struct.reg_val { i32 128, i32 53376, i32 65535, i32 256 }, %struct.reg_val { i32 128, i32 53394, i32 65535, i32 0 }, %struct.reg_val zeroinitializer], align 16
@ael2020_setup_twinax_edc.twinax_edc = internal global [878 x i32] [i32 55296, i32 16393, i32 55297, i32 12287, i32 55298, i32 12303, i32 55299, i32 16554, i32 55300, i32 16412, i32 55301, i32 16414, i32 55302, i32 8389, i32 55303, i32 15365, i32 55304, i32 25910, i32 55305, i32 12260, i32 55306, i32 15812, i32 55307, i32 26148, i32 55308, i32 12276, i32 55309, i32 15812, i32 55310, i32 8245, i32 55311, i32 12453, i32 55312, i32 25892, i32 55313, i32 11426, i32 55314, i32 12306, i32 55315, i32 4098, i32 55316, i32 10210, i32 55317, i32 12322, i32 55318, i32 4098, i32 55319, i32 10450, i32 55320, i32 12322, i32 55321, i32 4098, i32 55322, i32 10386, i32 55323, i32 12306, i32 55324, i32 4098, i32 55325, i32 9442, i32 55326, i32 12322, i32 55327, i32 4098, i32 55328, i32 10210, i32 55329, i32 12306, i32 55330, i32 4098, i32 55331, i32 9250, i32 55332, i32 12322, i32 55333, i32 4098, i32 55334, i32 8909, i32 55335, i32 12317, i32 55336, i32 10482, i32 55337, i32 12322, i32 55338, i32 4098, i32 55339, i32 21843, i32 55340, i32 775, i32 55341, i32 9586, i32 55342, i32 12322, i32 55343, i32 4098, i32 55344, i32 8610, i32 55345, i32 12306, i32 55346, i32 4098, i32 55347, i32 16406, i32 55348, i32 24163, i32 55349, i32 836, i32 55350, i32 8610, i32 55351, i32 12306, i32 55352, i32 4098, i32 55353, i32 16398, i32 55354, i32 9586, i32 55355, i32 12322, i32 55356, i32 4098, i32 55357, i32 11042, i32 55358, i32 12306, i32 55359, i32 4098, i32 55360, i32 10306, i32 55361, i32 12322, i32 55362, i32 4098, i32 55363, i32 9954, i32 55364, i32 12322, i32 55365, i32 4098, i32 55366, i32 12196, i32 55367, i32 15812, i32 55368, i32 26148, i32 55369, i32 11915, i32 55370, i32 12347, i32 55371, i32 22195, i32 55372, i32 966, i32 55373, i32 34411, i32 55374, i32 16396, i32 55375, i32 10114, i32 55376, i32 12306, i32 55377, i32 4098, i32 55378, i32 11339, i32 55379, i32 12443, i32 55380, i32 22195, i32 55381, i32 963, i32 55382, i32 34411, i32 55383, i32 16396, i32 55384, i32 8866, i32 55385, i32 12322, i32 55386, i32 4098, i32 55387, i32 10306, i32 55388, i32 12322, i32 55389, i32 4098, i32 55390, i32 9954, i32 55391, i32 12322, i32 55392, i32 4098, i32 55393, i32 12212, i32 55394, i32 15812, i32 55395, i32 26148, i32 55396, i32 22195, i32 55397, i32 963, i32 55398, i32 34411, i32 55399, i32 16412, i32 55400, i32 11333, i32 55401, i32 12437, i32 55402, i32 23379, i32 55403, i32 9170, i32 55404, i32 12306, i32 55405, i32 5058, i32 55406, i32 23747, i32 55407, i32 10114, i32 55408, i32 12306, i32 55409, i32 4882, i32 55410, i32 11042, i32 55411, i32 12306, i32 55412, i32 4098, i32 55413, i32 10306, i32 55414, i32 12322, i32 55415, i32 4098, i32 55416, i32 9762, i32 55417, i32 12322, i32 55418, i32 4098, i32 55419, i32 8610, i32 55420, i32 12306, i32 55421, i32 4098, i32 55422, i32 25231, i32 55423, i32 10629, i32 55424, i32 13221, i32 55425, i32 9954, i32 55426, i32 12322, i32 55427, i32 4098, i32 55428, i32 22099, i32 55429, i32 978, i32 55430, i32 16414, i32 55431, i32 28530, i32 55432, i32 4098, i32 55433, i32 25231, i32 55434, i32 8964, i32 55435, i32 15492, i32 55436, i32 25654, i32 55437, i32 57332, i32 55438, i32 25654, i32 55439, i32 12277, i32 55440, i32 12293, i32 55441, i32 34390, i32 55442, i32 57274, i32 55443, i32 22179, i32 55444, i32 53338, i32 55445, i32 10722, i32 55446, i32 12306, i32 55447, i32 5010, i32 55448, i32 53338, i32 55449, i32 22179, i32 55450, i32 57274, i32 55451, i32 899, i32 55452, i32 28530, i32 55453, i32 4098, i32 55454, i32 10852, i32 55455, i32 12308, i32 55456, i32 8197, i32 55457, i32 15733, i32 55458, i32 50257, i32 55459, i32 10658, i32 55460, i32 12322, i32 55461, i32 4098, i32 55462, i32 6028, i32 55463, i32 6296, i32 55464, i32 6564, i32 55465, i32 6832, i32 55466, i32 7100, i32 55467, i32 7368, i32 55468, i32 7635, i32 55469, i32 7902, i32 55470, i32 8169, i32 55471, i32 8436, i32 55472, i32 8703, i32 55473, i32 0, i32 55474, i32 10049, i32 55475, i32 12321, i32 55476, i32 4097, i32 55477, i32 50720, i32 55478, i32 0, i32 55479, i32 50721, i32 55480, i32 0, i32 55481, i32 50722, i32 55482, i32 226, i32 55483, i32 50723, i32 55484, i32 127, i32 55485, i32 50724, i32 55486, i32 206, i32 55487, i32 50725, i32 55488, i32 0, i32 55489, i32 50727, i32 55490, i32 0, i32 55491, i32 50728, i32 55492, i32 0, i32 55493, i32 51466, i32 55494, i32 14972, i32 55495, i32 50732, i32 55496, i32 0, i32 55497, i32 0, i32 55498, i32 10049, i32 55499, i32 12321, i32 55500, i32 4097, i32 55501, i32 50434, i32 55502, i32 21420, i32 55503, i32 50435, i32 55504, i32 11475, i32 55505, i32 50688, i32 55506, i32 10862, i32 55507, i32 50689, i32 55508, i32 10796, i32 55509, i32 50693, i32 55510, i32 21847, i32 55511, i32 50700, i32 55512, i32 21504, i32 55513, i32 50960, i32 55514, i32 1792, i32 55515, i32 50961, i32 55516, i32 3846, i32 55517, i32 50968, i32 55518, i32 1792, i32 55519, i32 50969, i32 55520, i32 3846, i32 55521, i32 50976, i32 55522, i32 18176, i32 55523, i32 50977, i32 55524, i32 3846, i32 55525, i32 50984, i32 55526, i32 1792, i32 55527, i32 50985, i32 55528, i32 4615, i32 55529, i32 51201, i32 55530, i32 32592, i32 55531, i32 51202, i32 55532, i32 30560, i32 55533, i32 51203, i32 55534, i32 32718, i32 55535, i32 51204, i32 55536, i32 21006, i32 55537, i32 51205, i32 55538, i32 23569, i32 55539, i32 51206, i32 55540, i32 15441, i32 55541, i32 51207, i32 55542, i32 16481, i32 55543, i32 51208, i32 55544, i32 18881, i32 55545, i32 51209, i32 55546, i32 14400, i32 55547, i32 51210, i32 55548, i32 0, i32 55549, i32 51233, i32 55550, i32 2, i32 55551, i32 51234, i32 55552, i32 70, i32 55553, i32 51268, i32 55554, i32 6191, i32 55555, i32 51273, i32 55556, i32 1024, i32 55557, i32 51274, i32 55558, i32 2, i32 55559, i32 49171, i32 55560, i32 62273, i32 55561, i32 49284, i32 55562, i32 48, i32 55563, i32 51460, i32 55564, i32 5121, i32 55565, i32 51980, i32 55566, i32 4, i32 55567, i32 51982, i32 55568, i32 40970, i32 55569, i32 51983, i32 55570, i32 49344, i32 55571, i32 51984, i32 55572, i32 49344, i32 55573, i32 51985, i32 55574, i32 160, i32 55575, i32 51986, i32 55576, i32 7, i32 55577, i32 49729, i32 55578, i32 40960, i32 55579, i32 49731, i32 55580, i32 32736, i32 55581, i32 50692, i32 55582, i32 14, i32 55583, i32 50697, i32 55584, i32 245, i32 55585, i32 50705, i32 55586, i32 14, i32 55587, i32 50784, i32 55588, i32 38400, i32 55589, i32 50823, i32 55590, i32 4, i32 55591, i32 50698, i32 55592, i32 1269, i32 55593, i32 0, i32 55594, i32 10049, i32 55595, i32 12321, i32 55596, i32 4097, i32 55597, i32 50720, i32 55598, i32 5349, i32 55599, i32 50721, i32 55600, i32 50493, i32 55601, i32 50722, i32 55602, i32 15550, i32 55603, i32 50723, i32 55604, i32 17490, i32 55605, i32 50724, i32 55606, i32 50629, i32 55607, i32 50725, i32 55608, i32 57374, i32 55609, i32 50727, i32 55610, i32 0, i32 55611, i32 50728, i32 55612, i32 0, i32 55613, i32 50732, i32 55614, i32 0, i32 55615, i32 51466, i32 55616, i32 14972, i32 55617, i32 0, i32 55618, i32 11140, i32 55619, i32 15476, i32 55620, i32 25653, i32 55621, i32 57332, i32 55622, i32 25653, i32 55623, i32 10246, i32 55624, i32 12294, i32 55625, i32 34149, i32 55626, i32 11044, i32 55627, i32 15396, i32 55628, i32 25654, i32 55629, i32 4098, i32 55630, i32 11044, i32 55631, i32 15396, i32 55632, i32 25654, i32 55633, i32 16453, i32 55634, i32 34390, i32 55635, i32 22115, i32 55636, i32 770, i32 55637, i32 16414, i32 55638, i32 4098, i32 55639, i32 10247, i32 55640, i32 12711, i32 55641, i32 8388, i32 55642, i32 15396, i32 55643, i32 26404, i32 55644, i32 12279, i32 55645, i32 12535, i32 55646, i32 8388, i32 55647, i32 15364, i32 55648, i32 26404, i32 55649, i32 4098, i32 55650, i32 10247, i32 55651, i32 12679, i32 55652, i32 8388, i32 55653, i32 15396, i32 55654, i32 26404, i32 55655, i32 12260, i32 55656, i32 15812, i32 55657, i32 25655, i32 55658, i32 8388, i32 55659, i32 15364, i32 55660, i32 26404, i32 55661, i32 4098, i32 55662, i32 9460, i32 55663, i32 15460, i32 55664, i32 25654, i32 55665, i32 57332, i32 55666, i32 25654, i32 55667, i32 4098, i32 55668, i32 8198, i32 55669, i32 15734, i32 55670, i32 49505, i32 55671, i32 24884, i32 55672, i32 24885, i32 55673, i32 21571, i32 55674, i32 771, i32 55675, i32 25892, i32 55676, i32 251, i32 55677, i32 4098, i32 55678, i32 8404, i32 55679, i32 15396, i32 55680, i32 8229, i32 55681, i32 12293, i32 55682, i32 25892, i32 55683, i32 4098, i32 55684, i32 53273, i32 55685, i32 8452, i32 55686, i32 15396, i32 55687, i32 8453, i32 55688, i32 14341, i32 55689, i32 25892, i32 55690, i32 57332, i32 55691, i32 16389, i32 55692, i32 25892, i32 55693, i32 11917, i32 55694, i32 12349, i32 55695, i32 9224, i32 55696, i32 13784, i32 55697, i32 24019, i32 55698, i32 775, i32 55699, i32 34951, i32 55700, i32 25511, i32 55701, i32 34951, i32 55702, i32 25511, i32 55703, i32 57341, i32 55704, i32 249, i32 55705, i32 4098, i32 55706, i32 34410, i32 55707, i32 24888, i32 55708, i32 22659, i32 55709, i32 10914, i32 55710, i32 12322, i32 55711, i32 4866, i32 55712, i32 12279, i32 55713, i32 12295, i32 55714, i32 34693, i32 55715, i32 47239, i32 55716, i32 34694, i32 55717, i32 47302, i32 55718, i32 23123, i32 55719, i32 10674, i32 55720, i32 12322, i32 55721, i32 5058, i32 55722, i32 9332, i32 55723, i32 15492, i32 55724, i32 25815, i32 55725, i32 25815, i32 55726, i32 12277, i32 55727, i32 15365, i32 55728, i32 34647, i32 55729, i32 47238, i32 55730, i32 38759, i32 55731, i32 26564, i32 55732, i32 28530, i32 55733, i32 4098, i32 55734, i32 0], align 16
@edc_twinax = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @ael2020_setup_twinax_edc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael2020_setup_twinax_edc(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cphy*, %struct.cphy** %4, align 8
  %9 = call i32 @set_phy_regs(%struct.cphy* %8, %struct.reg_val* getelementptr inbounds ([3 x %struct.reg_val], [3 x %struct.reg_val]* @ael2020_setup_twinax_edc.uCclock40MHz, i64 0, i64 0))
  store i32 %9, i32* %7, align 4
  %10 = call i32 @msleep(i32 500)
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %60

15:                                               ; preds = %2
  %16 = load %struct.cphy*, %struct.cphy** %4, align 8
  %17 = call i32 @set_phy_regs(%struct.cphy* %16, %struct.reg_val* getelementptr inbounds ([2 x %struct.reg_val], [2 x %struct.reg_val]* @ael2020_setup_twinax_edc.uCclockActivate, i64 0, i64 0))
  store i32 %17, i32* %7, align 4
  %18 = call i32 @msleep(i32 500)
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %60

23:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %46, %23
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([878 x i32], [878 x i32]* @ael2020_setup_twinax_edc.twinax_edc, i64 0, i64 0))
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %49

34:                                               ; preds = %32
  %35 = load %struct.cphy*, %struct.cphy** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [878 x i32], [878 x i32]* @ael2020_setup_twinax_edc.twinax_edc, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [878 x i32], [878 x i32]* @ael2020_setup_twinax_edc.twinax_edc, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mdio_write(%struct.cphy* %35, i32 128, i32 %39, i32 %44)
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 2
  store i32 %48, i32* %6, align 4
  br label %24

49:                                               ; preds = %32
  %50 = load %struct.cphy*, %struct.cphy** %4, align 8
  %51 = call i32 @set_phy_regs(%struct.cphy* %50, %struct.reg_val* getelementptr inbounds ([3 x %struct.reg_val], [3 x %struct.reg_val]* @ael2020_setup_twinax_edc.uCactivate, i64 0, i64 0))
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @edc_twinax, align 4
  %56 = load %struct.cphy*, %struct.cphy** %4, align 8
  %57 = getelementptr inbounds %struct.cphy, %struct.cphy* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %21, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @set_phy_regs(%struct.cphy*, %struct.reg_val*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mdio_write(%struct.cphy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
